package rutina

import org.apache.commons.logging.LogFactory


class Gimnasio {

	static final log = LogFactory.getLog(this)
	
    String nombre
    Date generado = new Date()

    static hasMany = [usuarios: Usuario,
    				administradores:Usuario, 
    				entrenadores:Usuario,
    				rutinas: Rutina]
    
	static constraints = {
        nombre(nullable: false, blank: false, unique: true)
    }
	
	
	void addToAdministradores(Usuario admin){
		boolean itsOk = Boolean.FALSE
		if(administradores == null) administradores = new ArrayList<Usuario>()
		
		if(!admin.roles.empty){
			def roles = admin.roles
			for (var in roles) {
				if(var.nombre.equals("ADMIN")){
					this.administradores.add(admin)
					itsOk = Boolean.TRUE
					break
				}
			}
		}
		if(!itsOk)
			 log.error "El usuario debe ser ADMIN"
		
	}
	
	
	@Override
	public String toString() {
		return this.nombre;
	}
	
}
