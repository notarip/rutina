package rutina

class Serie {

	Float peso = 0
	Integer repeticiones = 0
	Integer series = 1
	Long descanso = 0
	Long tiempo = 0
	Long distancia = 0
	Float velocidad = 0F

	Date generado = new Date()
	static belongsTo = Accion

    static constraints = {
    	peso min:0F
    	repeticiones min:0
    	series min:1
    	descanso min:0L
    	tiempo: min:0L
    	distancia: min:0L
    	velocidad: min:0F
    }

    public Long tiempoTotal(){

    	return series*(descanso) + tiempo

    }

    @Override
	public String toString() {
		return " $peso * $repeticiones * $series"
	}
}
