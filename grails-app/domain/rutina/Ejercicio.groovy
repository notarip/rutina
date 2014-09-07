package rutina


class Ejercicio {

	String nombre
	String descripcion
	String grupo
	Boolean peso
	Boolean repeticiones
	Boolean tiempo
	
	//TODO agregar un link con graficos para entender de que se trata
	
    static constraints = {
		nombre blank:false, null:false
    }

    @Override
	public String toString() {
		return this.nombre;
	}
}
