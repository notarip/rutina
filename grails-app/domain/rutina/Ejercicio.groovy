package rutina


class Ejercicio {

	String nombre
	String descripcion
	GrupoMuscular grupo
	Boolean peso
	Boolean repeticiones
	Boolean tiempo
	Date generado = new Date()
	
	//TODO agregar un link con graficos para entender de que se trata
	
    static constraints = {
		nombre blank:false, null:false
    }

    @Override
	public String toString() {
		return this.nombre;
	}
}
