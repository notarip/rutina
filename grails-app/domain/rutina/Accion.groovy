package rutina

class Accion {

	/**
	* FIXME O tiene una rutina o un entrenamiento
	* si es parte de un entrenamiento es por que se hizo, sino 
	* es parte de una rutina
	*/

	Sesion sesion
	Entrenamiento entrenamiento
	Ejercicio ejercicio
	Date generado = new Date()
	static hasMany = [series: Serie]
	
	
    static constraints = {
    	ejercicio null:false
    	entrenamiento nullable:true
    	sesion nullable:true
    }


    @Override
	public String toString() {
		return "$ejercicio " + series.toListString(10)
	}

	

}
