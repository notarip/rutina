package rutina

import org.apache.commons.logging.LogFactory


class Gimnasio {

	static final log = LogFactory.getLog(this)
	
    String nombre
    Date generado = new Date()

    static hasMany = [usuarios: Usuario,
    				entrenadores:Usuario,
    				rutinas: Rutina]
    
	static constraints = {
        nombre(nullable: false, blank: false, unique: true)
    }
	
	
	@Override
	public String toString() {
		return this.nombre;
	}
	
}
