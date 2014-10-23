package util

class LoginController {

    
	def index(){


	}

	def login() {

		
		def user = params["user"]
		session["user"] = user

        log.debug "user " + session["user"]

        [usuario: session["user"]]



    }

    def logout() {

        def usuario = session["user"]
        log.debug "Cerrando sesion "  + usuario
        session.invalidate()

        [usuario:usuario]
        

    }

 

}
