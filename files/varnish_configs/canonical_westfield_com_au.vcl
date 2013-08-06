# $Id: canonical_westfield_com_au.vcl 861 2010-03-01 02:29:21Z thiago $

# Systest 1

if ( req.http.Host ~ "^www(nz|uk|us)\.syt1\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwau.syt1.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwau.syt1.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 2

if ( req.http.Host ~ "^www(nz|uk|us)\.syt2\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwau.syt2.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwau.syt2.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 3

if ( req.http.Host ~ "^www(nz|uk|us)\.syt3\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwau.syt3.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwau.syt3.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Systest 4

if ( req.http.Host ~ "^www(nz|uk|us)\.syt2\.dbg\.westfield\.com$" ) 
{
	if (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwau.syt4.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(airportwest|aucentres|belconnen|bondijunction|brandspace|burwood|carindale|carousel|centrepoint|chatswood|chermside|community|doncaster|eastgardens|figtree|fountaingate|gardencity|geelong|gifts|helensvale|hornsby|hurstville|innaloo|kotara|liverpool|marion|miranda|mtdruitt|northlakes|northrocks|parramatta|penrith|plentyvalley|southland|strathpine|sydney|sydneycentralplaza|teatreeplaza|tuggerah|warrawong|wearefamily|westlakes|whitfordcity|woden)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwau.syt4.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}
