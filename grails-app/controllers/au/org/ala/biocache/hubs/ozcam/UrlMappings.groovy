package au.org.ala.biocache.hubs.ozcam

class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        //"/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/error')
	}
}
