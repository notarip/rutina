package rutina



class Usuario {

  	String nombre
	String email
	String password
	Boolean cuotaAlDia = new Boolean(Boolean.TRUE)
	Boolean certificadoAlDia = new Boolean(Boolean.TRUE)
	Long tiempoDisponible = new Long(30)
	Date naciemiento
	String sexo
	Date generado = new Date()

	static hasMany = [adminGyms:Gimnasio,userGyms:Gimnasio,coachGyms:Gimnasio, 
						roles: Rol, rutinas:Rutina, entrenamientos: Entrenamiento, 
						gruposMuscularesRestringidos: GrupoMuscular]

	static belongsTo = Gimnasio
	static mappedBy = [adminGyms:"administradores", userGyms: "usuarios",coachGyms: "entrenadores"]

	
	static constraints = {
		nombre nullable: false, blank: false
		email email:true
		password size: 5..15, blank: false, password:true
		sexo inList: ["Femenino", "Masculino", "Otro"]
		tiempoDisponible min: new Long(30)
		naciemiento nullable: true
	}
	

	def agregarRutina(Rutina rutina){

		def error = false

		if(!rutinas) rutinas = []

		if(!certificadoAlDia){
			this.errors.rejectValue('rutinas','user.certificado.vencido')
		}

		if(!cuotaAlDia){
			this.errors.rejectValue('rutinas','user.cuota.vencida')
		}

		if(!validarGruposMusculares(rutina)){
			this.errors.rejectValue('rutinas','user.grupos.musculares.restringidos')
		}

		if(!excedeTiempoADedicar(rutina)){
			this.errors.rejectValue('rutinas','user.supera.tiempo.disponible')
		}		

		darDeBajaRutinas(rutina)

		enviarNotificaciones(rutina)

		rutinas.add(rutina)


	}

	private void enviarNotificaciones(Rutina rutina){

		//armar un servicio para notificaciones
		new Notificacion(usuario: this, mensaje: "El usuario ${this} tiene mas de 60 años").save()


	}

	private void darDeBajaRutinas(Rutina rutina){

		rutinas.each(){ 
			if (it.gimnasio == rutina.gimnasio)
				it.fin  = new Date() 
		}
	}

	private boolean excedeTiempoADedicar(Rutina rutina){

		if(tiempoDisponible > 0){

			
		}

		return false
	}

	private boolean validarGruposMusculares(Rutina rutina){

		def lista = []
		boolean hayRestringidos = false
		
		if(gruposMuscularesRestringidos){

			rutina.sesiones.each(){  
				it.acciones.each() { 
					lista.add(it.ejercicio.grupo)
				} 
			}
			hayRestringidos = lista.intersect(gruposMuscularesRestringidos)
		}

		return hayRestringidos
	}

	@Override
	public String toString() {
		return this.nombre;
	}
}