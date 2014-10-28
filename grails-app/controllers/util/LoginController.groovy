package util


class LoginCommand {
	String user

	static constraints = {
			user blank: false, minSize: 6
		}
}


class LoginController {

	def index(){


	}

	def login(LoginCommand cmd) {

		
		String user = cmd.user?:""
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
