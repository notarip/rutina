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

	static hasMany = [adminCamps:Campo,userCamps:Campo,coachCamps:Campo, roles: Rol, rutinas:Rutina, entrenamientos: Entrenamiento]
	static belongsTo = Campo
	static mappedBy = [adminCamps:"administradores", userCamps: "usuarios",coachCamps: "entrenadores"]

	
	static constraints = {
		nombre nullable: false, blank: false
		email email:true
		password size: 5..15, blank: false, password:true
		sexo inList: ["Femenino", "Masculino", "Otro"]
		tiempoDisponible min: 30
	}
	
	@Override
	public String toString() {
		return this.nombre;
	}
}