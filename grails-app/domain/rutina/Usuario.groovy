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
						gruposMuscularesRestringidos: GurpoMuscular]

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
	

/*
- Si el usuario no tiene el certificado medico al dia se lanza una advertencia
- Si el usuario no tiene la cuota al dia se lanza una advertencia 
- Si el usuario posee otra rutina para ese gimnasio se dara de baja
- Si los ejercicios cargados trabajan los grupos musculares restringidos en el usuario, se advierte(!)
- Si las sesiones de ejercicios superan el tiempo que puede dedicar el usuario a cada entrenamiento, se advierte(!).
- Si tiene más de 60 años se enviara una notificación al administrador del gimnasio notificando la rutina creada.

*/
	def agregarRutina(Rutina rutina){

		if(!certificadoAlDia)
			this.errors.rejectValue('rutinas','user.certificado.vencido')
		if(!cuotaAlDia)	
			this.errors.rejectValue('rutinas','user.cuota.vencida')

		if(!validarGruposMusculares(rutina))
			this.errors.rejectValue('rutinas','user.grupos.musculares.restringidos')


	}

	private boolean validarGruposMusculares(Rutina rutina){

		//recuperar todos los ejercios de la rutina y validar que no
		//trabajen grupos musculares restringidos


		return true;
	}

	@Override
	public String toString() {
		return this.nombre;
	}
}