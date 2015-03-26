package rutina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional




class NewAccionCommand {
	 Integer serie
   Float peso
   Integer distancia
   Integer tiempo
   Integer descanso
   String ejercicio
   Integer repeticiones
   Float velocidad

	}


@Transactional(readOnly = true)
class RutinaController {

    static allowedMethods = [saveSesion: "POST",save: "POST", update: "PUT", delete: "DELETE"]

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

    def saveSesion(NewAccionCommand cmd){

      // TODO seguir desde aca:
      // cambiar el nombre al metodo por saveAccion
      // Ir guardando las acciones en la sesion
      // ver como queda el arbol de objetos.
      render cmd

    }

    def save(NewAccionCommand cmd) {


      return
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
