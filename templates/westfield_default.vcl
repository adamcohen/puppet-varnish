# Varnish main config file (/etc/varnish/default)

## BACKENDS
# back_office_console (HTTPS)
# customer_console
include "/etc/varnish/backend_customer_console.vcl";
## centre_service
include "/etc/varnish/backend_centre_service.vcl";
# customer_service (HTTPS)
# deal_service
include "/etc/varnish/backend_deal_service.vcl";
# user_service
include "/etc/varnish/backend_user_service.vcl";
# event_service
include "/etc/varnish/backend_event_service.vcl";
# file_service
include "/etc/varnish/backend_file_service.vcl";
# image_service
#include "/etc/varnish/backend_image_service.vcl";
# movie_service
include "/etc/varnish/backend_movie_service.vcl";
# product_service
include "/etc/varnish/backend_product_service.vcl";
# search_service
include "/etc/varnish/backend_search_service.vcl";
# store_service
include "/etc/varnish/backend_store_service.vcl";
# stream_service
include "/etc/varnish/backend_stream_service.vcl";


# Called when a client request is received
sub vcl_recv {
  if (req.request != "GET" &&
    req.request != "HEAD" &&
    req.request != "PUT" &&
    req.request != "POST" &&
    req.request != "TRACE" &&
    req.request != "OPTIONS" &&
    req.request != "DELETE") {
    /* Non-RFC2616 or CONNECT which is weird. */
    return (pipe);
  }

  # Normalise requests sent via curl's -X mode and LWP.  Must do before
  # backend selection.
  if (req.url ~ "^http://") {
    set req.url = regsub(req.url, "http://[^/]*", "");
  }

  set req.http.X-Forwarded-For = client.ip;

  # Backend selection
  include "/etc/varnish/select_backend.vcl";

  if (req.request != "GET" && req.request != "HEAD") {
    /* We only deal with GET and HEAD by default */
    return (pass);
  }

  if include "/etc/varnish/never_cache.vcl"; {
    return (pass);
  }

  # Allow purging
  # 17764 #if (req.backend.healthy) {#}
  if (req.http.Pragma ~ "no-cache" || req.http.Cache-Control ~ "no-cache") {
    purge("req.url == " req.url " && req.http.host == " req.http.host );
  }

  include "/etc/varnish/remove_cookies.vcl";

  #  if (req.http.Authorization || req.http.Cookie) {
  if (req.http.Authorization ) {
    /* Not cacheable by default */
    return (pass);
  }

  # Normalise Accept-Encoding. See http://varnish-cache.org/wiki/FAQ/Compression
  if (req.http.Accept-Encoding) {
    if (req.url ~ "\.(jpg|png|gif|gz|tgz|bz2|tbz|mp3|ogg)$") {
      # No point in compressing these
      remove req.http.Accept-Encoding;
    } elsif (req.http.Accept-Encoding ~ "gzip") {
      set req.http.Accept-Encoding = "gzip";
    } elsif (req.http.Accept-Encoding ~ "deflate") {
      set req.http.Accept-Encoding = "deflate";
    } else {
      # unkown algorithm
      remove req.http.Accept-Encoding;
    }
  }

  return (lookup);
} # end sub vcl_recv


sub vcl_miss {
  return (fetch);
}


# Called when the request has been sent to the backend and a response has been
# received from the backend.
sub vcl_fetch {
  # Remove/modify unwanted headers
  unset beresp.http.X-Powered-By;
  unset beresp.http.X-Runtime;
  set beresp.http.Server = "Apache";

  # If status not one of the below try again (up to max_restarts)
  if (
    beresp.status != 200 && beresp.status != 201 && beresp.status != 204 &&
    beresp.status != 403 && beresp.status != 404 && beresp.status != 301 &&
    beresp.status != 302 && beresp.status != 307 && beresp.status != 410 &&
    beresp.status != 422) {
      if (req.http.X-Forwarded-Host) {
        set req.http.Host = req.http.X-Forwarded-Host;
      }
    restart;
  }


  # FB 16467 - Override cache control for POST
  if (bereq.request == "POST" || bereq.request == "DELETE" || bereq.request == "PUT") {
    set beresp.http.Cache-Control = "private, max-age=0";
    if (beresp.http.Expires) { unset beresp.http.Expires; }
  }

  # Cache 404s for a minimal period; avoids hammering backends with b0rken reqs
  if (beresp.status == 404) {
    set beresp.http.Cache-Control = "public, max-age=60";
    set beresp.ttl = 1m;
    # Return here to avoid hitting the other Cache-Control rules below
    return (deliver);
  }

  if (beresp.http.Cache-Control) {

    if (beresp.http.Cache-Control ~ "(no-cache|private)") {
      return (pass);
    }

                # Prefer HTTP 1.1 headers over 1.0  
                if (beresp.http.Cache-Control ~ "max-age") {
                        if (beresp.http.Expires) { unset beresp.http.Expires; }
                        if (beresp.http.Pragma) { unset beresp.http.Pragma; }
                }

        } elseif (! (include "/etc/varnish/never_cache.vcl";) ) {
                # Default for all cacheable objects without a Cache-Control header
                set beresp.http.Cache-Control = "public, max-age=10800";
                if (beresp.ttl < 1h) { set beresp.ttl = 3h; }
        }

        if (!beresp.cacheable) {
                return (pass);
        }


  # Don't use grace in systest - we want to know when a backend is down
        # Need to be max(req.grace): see vcl_miss()
  #        set beresp.grace = 10h;

        return (deliver);

}

# Called before a response object (from the cache or the web server) is sent
# to the requesting client.
sub vcl_deliver {
  if (obj.hits > 0) {
    set resp.http.X-Cache = "HIT";  
    set resp.http.X-Cache-Hits = obj.hits;
  } else {
    set resp.http.X-Cache = "MISS";  
  }

  return (deliver);
}

sub vcl_error {
        if (obj.status == 751) {
                set obj.http.Location = obj.response;
                set obj.response = "Moved permanently";
                set obj.status = 301;
        }

        elseif (obj.status == 752) {
                set obj.http.Location = obj.response;
                set obj.response = "Moved temporarily";
                set obj.status = 302;
        }

        elseif (obj.status == 753) {
                set obj.http.Location = obj.response;
                set obj.response = "Denied. Ouch!";
                synthetic {" Denied. Ouch! "};
                set obj.status = 403;
        }

        elseif (obj.status == 768) {
                set obj.http.Cache-Control = "public, max-age=10";
                set obj.response = "I'm a teapot";
                synthetic {" No Backend Defined for this route"};
                set obj.status = 418;
  }

  elseif (req.restarts < 3) {
                set obj.http.Cache-Control = "public, max-age=10";
                set obj.response = "Backend Unavailable";
                synthetic {" Ran out of retries (aka the backend we tried is unhealthy)"};
                set obj.status = 502;

        } else {
                set obj.http.Content-Type = "text/html; charset=utf-8";
                synthetic {"
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Westfield - "} obj.status " " obj.response {"</title>
</head>

<body>

<div style="margin:100px auto 0 auto; width:580px; font-family:Arial, Helvetica, sans-serif; font-size:25px; line-height:1.4em; color:#555;" >

<div style="width:580px;" >
        <p align="center">Westfield.com is experiencing<br />technical difficulties</p>
        <p style="font-size:15px; line-height:1.4em;" align="center">We're working hard to identify the problem,<br />and hope to be up and running again soon.</p>
</div>

<div style="font-family:Arial, Helvetica, sans-serif; font-size:10px;color:white" <p><small>Technician's Note: </p><p>HTTP status code "} obj.status " " obj.response {"</p><p>Guru Meditation: XID: "} req.xid {"</p></div>

</body>
</html>
"};
                }


        return(deliver);
}
