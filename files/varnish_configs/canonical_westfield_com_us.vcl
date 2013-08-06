# $Id: canonical_westfield_com_us.vcl 861 2010-03-01 02:29:21Z thiago $

# Premium 1

if ( req.http.Host ~ "^www(au|nz|uk)\.syt1\.dbg\.westfield\.com$" )
{
	if (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwus.syt1.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwus.syt1.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}


# Premium 2

if ( req.http.Host ~ "^www(au|nz|uk)\.syt2\.dbg\.westfield\.com$" )
{
	if (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwus.syt2.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwus.syt2.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Premium 3

if ( req.http.Host ~ "^www(au|nz|uk)\.syt3\.dbg\.westfield\.com$" )
{
	if (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwus.syt3.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwus.syt3.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}

# Premium 4

if ( req.http.Host ~ "^www(au|nz|uk)\.syt4\.dbg\.westfield\.com$" )
{
	if (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/?$") {
		set req.url = regsub(req.url, "^/([^/]+)(/*)$", "http://wwwus.syt4.dbg.westfield.com/\1/");
		error 751 req.url;
	} elseif (req.url ~ "^/(annapolis|beldenvillage|brandon|broward|capital|centurycity|chicagoridge|citruspark|connecticutpost|corporate|countryside|culvercity|downtownplaza|eastridge|fashionsquare|foxhills|foxvalley|franklinpark|galleriaatroseville|gardenstateplaza|gateway|greatnorthern|hawthorn|hortonplaza|louisjoliet|mainplace|meriden|metreon|missionvalley|montgomery|northcounty|oakridge|oldorchard|palmdesert|parkway|plazabonita|plazacaminoreal|promenade|sanfrancisco|santaanita|sarasota|solano|southcenter|southgate|southlake|southpark|southshore|sunrise|topanga|trumbull|uscentres|utc|valencia|valleyfair|vancouver|westcovina|westland|wheaton|us)/") {
		set req.url = regsub(req.url, "^/([^/]+)/(.*)$", "http://wwwus.syt4.dbg.westfield.com/\1/\2");
		error 751 req.url;
	}
}
