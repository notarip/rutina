package rutina


class Rol {
	
	String nombre
	static hasMany = [usuarios:Usuario]    
	static belongsTo = Usuario

    static constraints = {
    }
	
	@Override
	public String toString() {
		return this.nombre;
	}
}
