package rutina

class GrupoMuscular {

	Long id
	String nombre
	String descripcion
	Date generado = new Date()

	static hasMany = [ejercicios: Ejercicio]


	static mapping = {
        id generator: 'hilo',
           params: [table: 'hi_value', column: 'next_value', max_lo: 100]
    }

    static constraints = {

    }
}
