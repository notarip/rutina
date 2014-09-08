package rutina

class Entrenamiento {

	String tipo
	Rutina rutina
	Usuario usuario
	static belongsTo = Usuario
	static mappedBy = [usuario:"entrenamientos"]
	static hasMany = [acciones:Accion]
	
	
    static constraints = {
		tipo inList: ["Rutina", "Libre"]
		tipo null:false
    }

    @Override
	public String toString() {
		return this.tipo;
	}
}
