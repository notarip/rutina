package util

class LoginController {

    def logout() {

        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        redirect(action: "login")

    }

    def login() {

		def user = session["user"]
		session["user"] = "John"
		

    }

}
