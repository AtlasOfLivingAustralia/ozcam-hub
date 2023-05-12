
class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        BootStrap.log.info "config.security.cas.bypass = ${grailsApplication.config.getProperty('security.cas.bypass')}"
        BootStrap.log.info "config.skin = ${grailsApplication.config.getProperty('skin')}"
        BootStrap.log.info "config.security.cas.appServerName = ${grailsApplication.config.getProperty('security.cas.appServerName')}"
        BootStrap.log.info "config.biocache.baseUrl = ${grailsApplication.config.getProperty('biocache.baseUrl')}"
        BootStrap.log.info "config.biocache.ajax.useProxy = ${grailsApplication.config.getProperty('biocache.ajax.useProxy')}"
    }
    def destroy = {
    }
}
