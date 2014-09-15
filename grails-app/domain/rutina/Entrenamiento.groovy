package rutina

class Entrenamiento {

	String tipo
	Rutina rutina
	Usuario usuario
	Date generado = new Date()
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
