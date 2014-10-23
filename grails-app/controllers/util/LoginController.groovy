package util

class LoginController {

    
	def index(){


	}

	def login() {

		
		String user = params["user"]?:""
		String sessionUser = session["user"]?:""


        if (user.isEmpty() && sessionUser.isEmpty()){

         redirect(action: "index", params: params)

        }else if (!user.isEmpty()){

        	session["user"] = user

        }

		

        [usuario: session["user"]]

    }

    def logout() {

        def usuario = session["user"]
        log.debug "Cerrando sesion "  + usuario
        session.invalidate()

        redirect(action: "index", params: params)
        

    }

 

}
