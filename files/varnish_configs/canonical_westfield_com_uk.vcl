# $Id: canonical_westfield_com_uk.vcl 861 2010-03-01 02:29:21Z thiago $

# Systest 1

if (
	req.http.Host ~ "^www(au|nz|us)\.syt1\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwuk.syt1.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwuk.syt1.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 2

if (
	req.http.Host ~ "^www(au|nz|us)\.syt2\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwuk.syt2.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwuk.syt2.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 3

if (
	req.http.Host ~ "^www(au|nz|us)\.syt3\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwuk.syt3.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwuk.syt3.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 4

if (
	req.http.Host ~ "^www(au|nz|us)\.syt4\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwuk.syt4.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(bradford|broadmarsh|castlecourt|derby|eaglecentre|london|londondevelopment|merryhill|royalvictoriaplace|stratfordcity|thefriary|thevillagelondon|ukcentres|uk)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwuk.syt4.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}
