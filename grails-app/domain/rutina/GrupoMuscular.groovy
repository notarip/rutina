package rutina

class GrupoMuscular {

	Long id
	String descripcion
	Date generado = new Date()

	static hasMany = [ejercicios: Ejercicio]


    static constraints = {
    }
}
