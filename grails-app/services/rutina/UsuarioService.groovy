package rutina

import grails.transaction.Transactional

@Transactional
class UsuarioService {

    def serviceMethod() {

    }


    public Usuario recuperarUsuarioSesion(def session){

    	String usuario = session["user"]
    	Usuario user = Usuario.find {nombre == usuario}

    	return user

    }
}
