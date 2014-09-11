package rutina

class UsuarioController {
	static scaffold = true


	def resumen(){
		String nombre = params.nombre
		Usuario user = Usuario.find{nombre== nombre}
		[user:user]


	}
}
