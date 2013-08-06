# $Id: canonical_westfield_com_nz.vcl 861 2010-03-01 02:29:21Z thiago $

# Systest 1

if ( req.http.Host ~ "^www(us|au|uk)\.syt1\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwnz.syt1.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwnz.syt1.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}


# Systest 2

if ( req.http.Host ~ "^www(us|au|uk)\.syt2\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwnz.syt2.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwnz.syt2.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 3

if ( req.http.Host ~ "^www(us|au|uk)\.syt3\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwnz.syt3.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwnz.syt3.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 4

if ( req.http.Host ~ "^www(us|au|uk)\.syt4\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwnz.syt4.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(albany|chartwell|downtown|glenfield|manukau|newmarket|nzcentres|pakuranga|queensgate|riccarton|shorecity|stlukes|westcity|nz)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwnz.syt4.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}
