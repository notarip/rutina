package rutina


class Rutina {

	String nombre
	Usuario usuario

	static belongsTo = Usuario
	static mappedBy = [usuario:"rutinas"]
	static hasMany = [acciones:Accion]
	

    static constraints = {
    }

    @Override
	public String toString() {
		return this.nombre;
	}
}
