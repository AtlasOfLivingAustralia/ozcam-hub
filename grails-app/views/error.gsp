<g:set var="orgNameLong" value="${grailsApplication.config.skin.orgNameLong}"/>
<g:set var="orgNameShort" value="${grailsApplication.config.skin.orgNameShort}"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <alatag:addApplicationMetaTags />
    <meta name="viewport" content="width=device-width, initial-scale=0.8, maximum-scale=1">

    <link rel="shortcut icon" href="${request.contextPath}/images/favicon.ico">

    <title>Error | ${orgNameLong}</title>
    <r:require modules="ozcam" />
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
    <r:script disposition='head'>
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
    </r:script>
    <r:layoutResources/>
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')?:'nav-collections'}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${grailsApplication.config.skin.fluidLayout?.toBoolean()}"/>
<alatag:outageBanner />
<div class="hero-bg"></div>
<div class="navbar navbar-inverse navbar-relative-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="http://ozcam.org.au/" title="OZCAM" rel="home">OZCAM</a>
            <div class="nav-collapse wam-right">
                <ul id="main-menu" class="nav">
                    <li id="menu-item-47" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-47">
                        <a href="http://ozcam.org.au/about/">About</a>
                    </li>
                    <li id="menu-item-46" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-41 current_page_item current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-46">
                        <a href="http://ozcam.org.au/contributors/">Contributors</span></a>
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
<div class="errors">
    <h1>
        An error occurred:
    </h1>
    <ul class="errors">
        <g:renderException exception="${exception}" />
    </ul>
<g:if test="${flash.message}">
    <ul class="errors">
        <li>${flash.message}</li>
    </ul>
</g:if>
</div>

<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();
</script>
<!-- JS resources-->
<r:layoutResources/>
</body>
</html>
