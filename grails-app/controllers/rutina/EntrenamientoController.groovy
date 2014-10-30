package rutina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EntrenamientoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Entrenamiento.list(params), model:[entrenamientoInstanceCount: Entrenamiento.count()]
    }

    def show(Entrenamiento entrenamientoInstance) {
        respond entrenamientoInstance
    }

    def create() {
        respond new Entrenamiento(params)
    }

    @Transactional
    def save(Entrenamiento entrenamientoInstance) {
        if (entrenamientoInstance == null) {
            notFound()
            return
        }

        if (entrenamientoInstance.hasErrors()) {
            respond entrenamientoInstance.errors, view:'create'
            return
        }

        entrenamientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'entrenamiento.label', default: 'Entrenamiento'), entrenamientoInstance.id])
                redirect entrenamientoInstance
            }
            '*' { respond entrenamientoInstance, [status: CREATED] }
        }
    }

    def edit(Entrenamiento entrenamientoInstance) {
        respond entrenamientoInstance
    }

    @Transactional
    def update(Entrenamiento entrenamientoInstance) {
        if (entrenamientoInstance == null) {
            notFound()
            return
        }

        if (entrenamientoInstance.hasErrors()) {
            respond entrenamientoInstance.errors, view:'edit'
            return
        }

        entrenamientoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Entrenamiento.label', default: 'Entrenamiento'), entrenamientoInstance.id])
                redirect entrenamientoInstance
            }
            '*'{ respond entrenamientoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Entrenamiento entrenamientoInstance) {

        if (entrenamientoInstance == null) {
            notFound()
            return
        }

        entrenamientoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Entrenamiento.label', default: 'Entrenamiento'), entrenamientoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'entrenamiento.label', default: 'Entrenamiento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
