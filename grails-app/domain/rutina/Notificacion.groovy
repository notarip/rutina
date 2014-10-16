package rutina

class Notificacion {

	Long id
	Usuario usuario
	String mensaje
	Date fecha = new Date()
	Boolean notificado

	static mapping = {
        id generator: 'hilo',
           params: [table: 'hi_value', column: 'next_value', max_lo: 100]
    }

    static constraints = {
    	notificado nullable: true
    }
}
