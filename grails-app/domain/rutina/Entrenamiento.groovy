package rutina

class Entrenamiento {

	String tipo
	static belongsTo = Usuario
	static hasMany = [acciones:Accion]
	Rutina rutina
	
    static constraints = {
		tipo inList: ["Rutina", "Libre"]
		tipo null:false
    }

    @Override
	public String toString() {
		return this.tipo;
	}
}
