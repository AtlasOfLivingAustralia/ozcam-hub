modules = {
//    application {
//        resource url:'js/application.js'
//    }

    // Define your skin module here - it must 'dependsOn' either bootstrap (ALA version) or bootstrap2 (unmodified) and core

    ozcam {
        dependsOn 'bootstrap', 'hubCore' // from ala-web-theme plugin
        resource url: [dir: 'css', file: 'ozcam.css'] //, attrs:[media:'screen, projection, print']
    }

    bootstrap {
        dependsOn 'core'
        defaultBundle 'main-core'
        resource url:[dir:'bootstrap/js', file:'bootstrap.js', plugin:'biocache-hubs'], disposition: 'head', exclude: '*'
        resource url:[dir:'bootstrap/css', file:'bootstrap.css', plugin:'biocache-hubs'] //, attrs:[media:'screen, projection, print']
        resource url:[dir:'bootstrap/css', file:'bootstrap-responsive.css', plugin:'biocache-hubs'], exclude: '*', attrs:[media:'screen'] // id:'responsiveCss'
        //resource url:[dir:'css', file:'avh-extra.css']//, attrs:[media:'screen']
    }

    core {
        dependsOn 'jquery'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'jquery-migrate-1.2.1.min.js', plugin:'biocache-hubs']
        resource url:[dir:'js', file:'html5.js', plugin:'biocache-hubs'], wrapper: { s -> "<!--[if lt IE 9]>$s<![endif]-->" }, disposition: 'head'
//        resource url:[dir:'css', file:'jquery.autocomplete.css', plugin:'biocache-hubs']
//        resource url:[dir:'js', file:'jquery.autocomplete.js', plugin:'biocache-hubs']
    }
}