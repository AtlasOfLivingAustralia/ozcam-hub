
class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        BootStrap.log.info "config.security.cas.bypass = ${grailsApplication.config.security.cas.bypass}"
        BootStrap.log.info "config.skin = ${grailsApplication.config.skin}"
        BootStrap.log.info "config.security.cas.appServerName = ${grailsApplication.config.security.cas.appServerName}"
        BootStrap.log.info "config.biocache.baseUrl = ${grailsApplication.config.biocache.baseUrl}"
        BootStrap.log.info "config.biocache.ajax.useProxy = ${grailsApplication.config.biocache.ajax.useProxy}"
    }
    def destroy = {
    }
}
