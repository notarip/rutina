package rutina


class Rutina {

	String nombre
	Usuario usuario
	Gimnasio gimnasio
	Date generado = new Date()
	Date inicio
	Date fin

	static belongsTo = [Usuario, Gimnasio]
	static mappedBy = [usuario:"rutinas"]
	static hasMany = [sesiones:Sesion]
	

    static constraints = {
    	gimnasio nullable: true
    	inicio nullable: true
    	fin nullable: true
    }

    public Long tiempoTotal(){

    	//calcular el tiempo de cada ejercicio con los descansos en las series.
    	//se puede modelar sumando todas las representaciones de tiempo
    	//que tenga una rutina
    	Long total = 0

    	sesiones.each() {

    		total += it.tiempoPorSesion()
    	}

    	return 10
    }

    @Override
	public String toString() {
		return this.nombre;
	}
}
