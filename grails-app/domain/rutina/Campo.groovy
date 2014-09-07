package rutina

import org.apache.commons.logging.LogFactory


class Campo {

	static final log = LogFactory.getLog(this)
	
    String nombre

    static hasMany = [usuarios: Usuario, administradores:Usuario, entrenadores:Usuario]
    
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
