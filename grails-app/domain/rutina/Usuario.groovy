package rutina



class Usuario {

  	String nombre
	String email
	String password

	static hasMany = [adminCamps:Campo,userCamps:Campo,coachCamps:Campo, roles: Rol, rutinas:Rutina, entrenamientos: Entrenamiento]
	static belongsTo = Campo
	static mappedBy = [adminCamps:"administradores", userCamps: "usuarios",coachCamps: "entrenadores"]

	
	static constraints = {
		nombre(nullable: false, blank: false)
		email email:true
		password size: 5..15, blank: false
	}
	
	@Override
	public String toString() {
		return this.nombre;
	}
}
