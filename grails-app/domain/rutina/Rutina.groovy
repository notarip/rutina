package rutina


class Rutina {

	String nombre
	Usuario usuario
	Date generado = new Date()
	Date inicio
	Date fin

	static belongsTo = Usuario
	static mappedBy = [usuario:"rutinas"]
	static hasMany = [sesiones:Sesion]
	

    static constraints = {
    	inicio nullable: true
    	fin nullable: true
    }

    @Override
	public String toString() {
		return this.nombre;
	}
}
