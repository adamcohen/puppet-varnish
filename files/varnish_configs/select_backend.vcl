
# House-keeping stuff
include "/etc/varnish/canonical_westfield_com_au.vcl";
include "/etc/varnish/canonical_westfield_com_nz.vcl";
include "/etc/varnish/canonical_westfield_com_uk.vcl";
include "/etc/varnish/canonical_westfield_com_us.vcl";

# Select the correct backend to process the request

if include "/etc/varnish/filter_centre_service.vcl"; {
	set req.backend = centre_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "centre-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_deal_service.vcl"; {
	set req.backend = deal_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "deal-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_event_service.vcl"; {
	set req.backend = event_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "event-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_user_service.vcl"; {
	set req.backend = user_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "user-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_file_service.vcl"; {
	set req.backend = file_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "file-service.systest.dbg.westfield.com";
}

#elseif include "/etc/varnish/filter_image_service.vcl"; {
#	set req.backend = image_service;
#	set req.http.X-Forwarded-Host = req.http.Host;
#	set req.http.Host = "image-service.systest.dbg.westfield.com";
#}

elseif include "/etc/varnish/filter_movie_service.vcl"; {
	set req.backend = movie_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "movie-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_product_service.vcl"; {
	set req.backend = product_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "product-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_store_service.vcl"; {
	set req.backend = store_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "store-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_search_service.vcl"; {
	set req.backend = search_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "search-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_stream_service.vcl"; {
	set req.backend = stream_service;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "stream-service.systest.dbg.westfield.com";
}

elseif include "/etc/varnish/filter_customer_console.vcl"; {
	set req.backend = customer_console;
	set req.http.X-Forwarded-Host = req.http.Host;
	set req.http.Host = "customer-console.systest.dbg.westfield.com";
}

#elseif include "/etc/varnish/filter_aaa_service.vcl"; {
#        set req.backend = aaa_service;
#        set req.http.X-Forwarded-Host = req.http.Host;
#        set req.http.Host = "aaa-service.systest.dbg.westfield.com";
#}

# Otherwise send a 768 error "no route defined"
else {
	error 768; 
}

