<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <alatag:addApplicationMetaTags />
    <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">

    <asset:link rel="shortcut icon" href="favicon.ico" />

    <title><g:layoutTitle /></title>

    <asset:javascript src="application.js" />

    <asset:javascript src="biocache-hubs.js" />

    <asset:javascript src="hubCore.js" />

    <asset:javascript src="bootstrap.min.js" />

    <g:render template="/layouts/global" plugin="biocache-hubs"/>

   <g:layoutHead />

    <style type="text/css">
    body {
        background-color: #ffffff !important;
    }
    #breadcrumb {
        margin-top: 10px;
    }
    #main-content #searchInfoRow #customiseFacetsButton > .dropdown-menu {
        background-color: #ffffff;
    }
    #footer {
        margin: 20px;
        padding-top: 10px;
        border-top: 1px solid #CCC;
        font-size: 12px;
    }
    #content .nav-tabs > li.active > a {
        background-color: #ffffff;
    }
    .nav {
        margin-top: 20px;
    }
    body > #main-content {
        margin-top: 0px;
    }

    </style>


   <asset:stylesheet src="ozcam.css"/>

    <asset:script type="text/javascript">
        // initialise plugins
        jQuery(function(){
            // autocomplete on navbar search input
            jQuery("form#search-form-2011 input#search-2011, form#search-inpage input#search, input#search-2013").autocomplete('http://bie.ala.org.au/search/auto.jsonp', {
                extraParams: {limit: 100},
                dataType: 'jsonp',
                parse: function(data) {
                    var rows = new Array();
                    data = data.autoCompleteList;
                    for(var i=0; i<data.length; i++) {
                        rows[i] = {
                            data:data[i],
                            value: data[i].matchedNames[0],
                            result: data[i].matchedNames[0]
                        };
                    }
                    return rows;
                },
                matchSubset: false,
                formatItem: function(row, i, n) {
                    return row.matchedNames[0];
                },
                cacheLength: 10,
                minChars: 3,
                scroll: false,
                max: 10,
                selectFirst: false
            });

            // Mobile/desktop toggle
            // TODO: set a cookie so user's choice is remembered across pages
            var responsiveCssFile = $("#responsiveCss").attr("href"); // remember set href
            $(".toggleResponsive").click(function(e) {
                e.preventDefault();
                $(this).find("i").toggleClass("icon-resize-small icon-resize-full");
                var currentHref = $("#responsiveCss").attr("href");
                if (currentHref) {
                    $("#responsiveCss").attr("href", ""); // set to desktop (fixed)
                    $(this).find("span").html("Mobile");
                } else {
                    $("#responsiveCss").attr("href", responsiveCssFile); // set to mobile (responsive)
                    $(this).find("span").html("Desktop");
                }
            });

            $('.helphover').popover({animation: true, trigger:'hover'});
        });
    </asset:script>

</head>
<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>
<g:set var="containerType" value="${fluidLayout ? 'container-fluid' : 'container'}"/>
<ala:systemMessage />
<div class="hero-bg"></div>
<div class="navbar navbar-inverse navbar-relative-top">
    <div class="navbar-inner">
        <div class="${containerType}">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="http://ozcam.org.au/" title="OZCAM" rel="home">OZCAM</a>
            <div class="nav-collapse wam-right">
                <ul id="main-menu" class="nav navbar-nav">
                    <li id="menu-item-47" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-47">
                        <a href="http://ozcam.org.au/about/">About</a>
                    </li>
                    <li id="menu-item-46" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-41 current_page_item current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-46">
                        <a href="http://ozcam.org.au/contributors/"><span>Contributors</span></a>
                        %{--<a href="http://ozcam.org.au/contributors/" class="dropdown-toggle" data-toggle="dropdown">Contributors <span class="caret"></span></a>--}%
                        %{--<ul class="dropdown-menu pull-right">--}%
                            %{--<li id="menu-item-117" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-117"><a href="/contributors#ala">Atlas of Living Australia</a></li>--}%
                            %{--<li id="menu-item-50" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-50"><a href="/contributors#australian-museum">Australian Museum</a></li>--}%
                            %{--<li id="menu-item-51" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-51"><a href="/contributors#anbc">Australian National Biological Collections</a></li>--}%
                            %{--<li id="menu-item-67" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-67"><a href="/contributors#mv">Museum Vic-to-ria</a></li>--}%
                            %{--<li id="menu-item-68" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-68"><a href="/contributors#ntmag">North-ern Ter-ri-tory Museum and Art Gallery</a></li>--}%
                            %{--<li id="menu-item-69" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-69"><a href="/contributors#qvmag">Queen Vic-to-ria Museum Art Gallery</a></li>--}%
                            %{--<li id="menu-item-70" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-70"><a href="/contributors#qm">Queens-land Museum</a></li>--}%
                            %{--<li id="menu-item-71" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-71"><a href="/contributors#sam">South Aus-tralian Museum</a></li>--}%
                            %{--<li id="menu-item-72" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-72"><a href="/contributors#tmag">Tas-man-ian Museum and Art Gallery</a></li>--}%
                            %{--<li id="menu-item-73" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-73"><a href="/contributors#wam">West-ern Aus-tralia Museum</a></li>--}%
                        %{--</ul>--}%
                    </li>
                    <li id="menu-item-45" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-45">
                        <a href="http://ozcam.org.au/news/">News</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


<!-- End Header -->
<!-- Begin Template Content -->

<header class="jumbotron subhead" id="overview">
    <div class="${containerType}">
        <h1>Search Specimens</h1>
        <p class="hide lead">OZCAM (Online Zoo-log-i-cal Col-lec-tions of Aus-tralian Muse-ums) pro-vides access to an online data-base of records aggre-gated from fau-nal col-lec-tions data-bases in Aus-tralian museums.</p>        </div>
</header>

<div class="main">
    <div class="${containerType}" id="content">
        <g:layoutBody />
        <div class="push"></div>
    </div><!--/.container -->
    <footer class="wamfooter">
        <div class="${containerType}">
            <div class="row">
                <div class="span8">
                    <div id="text-7" class="widget widget_text">
                        <div class="textwidget">
                            <p><a href="/contributors/"><asset:image src="logo-banner.png" alt="Logos for the various partners of OZCAM" /></a></p>
                            <p>OZCAM is an initiative of the Council of Heads of Australian Faunal Collections (CHAFC)</p>
                        </div>
                    </div>
                </div> <!-- /span8 -->
                <div class="span4">
                <a href="https://ala.org.au/"><asset:image src="ALA-powered-by-logo-inline.png" class="poweredByAlaLogo"/></a>
                </div> <!-- /span4 -->
            </div>
        </div>
    </footer>
    <div class="footer hide">
        <div style="float: right;padding-right:30px;"><a href="https://ala.org.au/"><asset:image src="ALA-powered-by-logo-inline.png" class="poweredByAlaLogo"/></a></div>
        <span style="padding-left:80px;">OZCAM is an initiative of the Council of Heads of Australian Faunal Collections (CHAFC)</span>
    </div>
</div>
<%--<script type="text/javascript">--%>
<%--var uvOptions = {};--%>
<%--(function() {--%>
<%--var uv = document.createElement('script'); uv.type = 'text/javascript'; uv.async = true;--%>
<%--uv.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'widget.uservoice.com/5XG4VblqrwiubphT3ktPQ.js';--%>
<%--var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(uv, s);--%>
<%--})();--%>
<%--</script>--%>
<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>
<asset:deferredScripts />
</body>
</html>
