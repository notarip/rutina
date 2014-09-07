package rutina

class Accion {

	/**
	* FIXME O tiene una rutina o un entrenamiento
	* si es parte de un entrenamiento es por que se hizo, sino 
	* es parte de una rutina
	*/

	Rutina rutina
	Entrenamiento entrenamiento
	Ejercicio ejercicio
	static hasMany = [series: Serie]
	
	
    static constraints = {
    	ejercicio null:false
    	entrenamiento nullable:true
    	rutina nullable:true
    }


    @Override
	public String toString() {
		return this.ejercicio;
	}

}
