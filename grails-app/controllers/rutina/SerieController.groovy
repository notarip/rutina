package rutina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SerieController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Serie.list(params), model:[serieInstanceCount: Serie.count()]
    }

    def show(Serie serieInstance) {
        respond serieInstance
    }

    def create() {
        respond new Serie(params)
    }

    @Transactional
    def save(Serie serieInstance) {
        if (serieInstance == null) {
            notFound()
            return
        }

        if (serieInstance.hasErrors()) {
            respond serieInstance.errors, view:'create'
            return
        }

        serieInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'serie.label', default: 'Serie'), serieInstance.id])
                redirect serieInstance
            }
            '*' { respond serieInstance, [status: CREATED] }
        }
    }

    def edit(Serie serieInstance) {
        respond serieInstance
    }

    @Transactional
    def update(Serie serieInstance) {
        if (serieInstance == null) {
            notFound()
            return
        }

        if (serieInstance.hasErrors()) {
            respond serieInstance.errors, view:'edit'
            return
        }

        serieInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Serie.label', default: 'Serie'), serieInstance.id])
                redirect serieInstance
            }
            '*'{ respond serieInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Serie serieInstance) {

        if (serieInstance == null) {
            notFound()
            return
        }

        serieInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Serie.label', default: 'Serie'), serieInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'serie.label', default: 'Serie'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
