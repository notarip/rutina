package rutina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RutinaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    UsuarioService usuarioService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Rutina.list(params), model:[rutinaInstanceCount: Rutina.count()]
    }

    def show(Rutina rutinaInstance) {
        respond rutinaInstance
    }

    def create() {

    	Usuario usuario = usuarioService.recuperarUsuarioSesion(session)

    	if (usuario){

    		def usuarios = [];
  			if (usuario.esAdmin()){

  				usuario.coachGyms.each(){ usuarios.addAll(it.usuarios) }

  			}else{

  				usuarios.add(usuario)

  			}

        def gimnasios = Gimnasio.list()
        def ejercicios = Ejercicio.list()

  			[rutinaInstance: new Rutina(usuario:usuario), usuarios:usuarios, gimnasios:gimnasios, ejercicios:ejercicios ,rutina: new Rutina()]

  		}else{

  			redirect(controller: "login", action: "index")
  		}



    }

    @Transactional
    def saveAccion(){


    }

    @Transactional
    def save(Rutina rutinaInstance) {
        if (rutinaInstance == null) {
            notFound()
            return
        }

        if (rutinaInstance.hasErrors()) {
            respond rutinaInstance.errors, view:'create'
            return
        }

        rutinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rutina.label', default: 'Rutina'), rutinaInstance.id])
                redirect rutinaInstance
            }
            '*' { respond rutinaInstance, [status: CREATED] }
        }
    }

    def edit(Rutina rutinaInstance) {
        respond rutinaInstance
    }

    @Transactional
    def update(Rutina rutinaInstance) {
        if (rutinaInstance == null) {
            notFound()
            return
        }

        if (rutinaInstance.hasErrors()) {
            respond rutinaInstance.errors, view:'edit'
            return
        }

        rutinaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Rutina.label', default: 'Rutina'), rutinaInstance.id])
                redirect rutinaInstance
            }
            '*'{ respond rutinaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Rutina rutinaInstance) {

        if (rutinaInstance == null) {
            notFound()
            return
        }

        rutinaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Rutina.label', default: 'Rutina'), rutinaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rutina.label', default: 'Rutina'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
