package rutina


class Rol {
	
	String nombre
	Date generado = new Date()
	static hasMany = [usuarios:Usuario]    
	static belongsTo = Usuario

    static constraints = {
    }
	
	@Override
	public String toString() {
		return this.nombre;
	}
}
