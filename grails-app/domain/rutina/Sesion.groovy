package rutina

class Sesion {

	Long id
	String descripcion
	Date generado = new Date()


	static hasMany = [acciones:Accion]

	static mapping = {
        id generator: 'hilo',
           params: [table: 'hi_value', column: 'next_value', max_lo: 100]
    }

    static constraints = {
    
    }

	@Override
	public String toString() {
		return this.descripcion;
	}

}
