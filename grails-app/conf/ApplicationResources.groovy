modules = {
//    application {
//        resource url:'js/application.js'
//    }

    // Define your skin module here - it must 'dependsOn' either bootstrap (ALA version) or bootstrap2 (unmodified) and core

    ozcam {
        dependsOn 'bootstrap', 'hubCore' // from ala-web-theme plugin
        resource url: [dir: 'css', file: 'ozcam.css'] //, attrs:[media:'screen, projection, print']
    }

}