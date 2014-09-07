package rutina

class Serie {

	Float peso = 0
	Integer repeticiones = 0
	Integer series = 1
	Long descanso = 0
	Long tiempo = 0
	static belongsTo = Accion

    static constraints = {
    	peso min:0F
    	repeticiones min:0
    	series min:1
    	descanso min:0L
    	tiempo: min:0L
    }

    @Override
	public String toString() {
		return " $peso * $repeticiones * $series"
	}
}
