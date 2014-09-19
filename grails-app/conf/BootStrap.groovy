import rutina.*

class BootStrap {

    def init = { servletContext ->

		Rol userRole = new Rol(nombre:"USER").save()
		Rol adminRole = new Rol(nombre:"ADMIN").save()
		Rol coachRole = new Rol(nombre:"COACH").save()
		
		Gimnasio mega1 = new Gimnasio(nombre:"mega1").save()
		
		Gimnasio mega2 = new Gimnasio(nombre:"mega2").save()
		
		
		Usuario pablo = new Usuario(nombre:"pablo", email:"pablo@user.com", password:"123456", sexo:"Masculino")
		pablo.addToRoles userRole
		pablo.save()
		
		Usuario jose = new Usuario(nombre:"jose",email:"jose@admin.com", password:"123456", sexo:"Masculino")
		jose.addToRoles(adminRole)
		jose.addToRoles(coachRole)
		jose.save()
		
		Usuario pepe = new Usuario(nombre:"pepe",email:"pepe@admin.com",password:"123456", sexo:"Masculino", certificadoAlDia:false)
		pepe.addToRoles(adminRole)
		pepe.addToRoles(coachRole)
		pepe.save()
		
		
		mega1.addToUsuarios(pablo)
		mega1.addToAdministradores(pablo)
		mega1.addToAdministradores(jose)
		mega1.addToEntrenadores(jose)
		mega1.save()
		

		mega2.addToUsuarios(pablo)
		mega2.addToAdministradores(pepe)
		mega2.addToEntrenadores(jose)
		mega2.save()
	/************************************************************/

		GrupoMuscular gm1 = new GrupoMuscular(nombre: "biceps", descripcion:"biceps").save()
		Ejercicio ej1 = new Ejercicio (grupo:gm1,nombre:"Zottman Preacher Curl", descripcion:"http://www.mipielsana.com/zottman-preacher-curl/", peso:true,repeticiones:true, tiempo:false).save()
		Ejercicio ej2 = new Ejercicio (grupo:gm1,nombre:"Zottman Curl", descripcion:"http://www.mipielsana.com/zottman-curl/", peso:true,repeticiones:true, tiempo:false).save()
		Ejercicio ej3 = new Ejercicio (grupo:gm1,nombre:"Wide Grip EZ Bar Curl", descripcion:"http://www.mipielsana.com/wide-grip-ez-bar-curl/", peso:true,repeticiones:true, tiempo:false).save()
		
		Rutina rut1 = new Rutina(nombre:"rut1", usuario:pablo).save()
		Sesion g1 = new Sesion(descripcion:"g1").save()
		Sesion g2 = new Sesion(descripcion:"g2").save()
		Rutina rut2 = new Rutina(nombre:"rut2", usuario:pablo).save()
		Sesion g3 = new Sesion(descripcion:"g3").save()
		Sesion g4 = new Sesion(descripcion:"g4").save()


		Serie serie1041 = new Serie(peso:10,repeticiones:10, series:4,descanso:1).save()
		Serie serie1521 = new Serie(peso:15,repeticiones:10, series:2,descanso:1).save()

		Accion acc1 = new Accion(ejercicio:ej1, series:[serie1041]).save()
		Accion acc2 = new Accion(ejercicio:ej2, series:[serie1041]).save()
		Accion acc3 = new Accion(ejercicio:ej3, series:[serie1041]).save()
			
		Accion acc4 = new Accion(ejercicio:ej1, series:[serie1521]).save()
		Accion acc5 = new Accion(ejercicio:ej2, series:[serie1521]).save()			

		println "************** BOOTSTRAP - HIDRATANDO **********************"
		println "GrupoMuscular 1: ${gm1}"
		println "Ejercicio 1: ${ej1}"
		println "Ejercicio 2: ${ej2}"
		println "Ejercicio 3: ${ej3}"
		println "Serie 1: ${serie1041}"
		println "Serie 2: ${serie1521}"
		println "Accion 1: ${acc1}"
		println "Accion 2: ${acc2}"
		println "Accion 3: ${acc3}"
		println "Accion 4: ${acc4}"
		println "Accion 5: ${acc5}"
		println "Sesion 1: ${g1}"
		println "Sesion 2: ${g2}"
		println "Rutina 1: ${rut1}"
		println "Rutina 2: ${rut2}"

		g1.addToAcciones(acc1)
		g1.addToAcciones(acc2)
		g1.addToAcciones(acc3)
		g1.save()
		rut1.addToSesiones(g1)

		println "Sesion 1: ${g1}"
		println "Rutina 1: ${rut1}"

		g3.addToAcciones(acc4)
		g3.addToAcciones(acc5)
		g3.save()
		rut2.addToSesiones(g3)

		println "Sesion 2: ${g2}"
		println "Rutina 2: ${rut2}"

		println "************ FIN DE BOOTSTRAP *****************"

	/************************************************************/

		println "************** BOOTSTRAP - ENTRENANDO **********************"

		Entrenamiento ent1 = new Entrenamiento(tipo:"Rutina", usuario:pablo, rutina:rut1).save()
		Accion acc6 = new Accion(entrenamiento:ent1, ejercicio:ej1, series:[serie1041]).save()
		Accion acc7 = new Accion(entrenamiento:ent1, ejercicio:ej2, series:[serie1041]).save()
		Accion acc8 = new Accion(entrenamiento:ent1, ejercicio:ej3, series:[serie1041]).save()
		ent1.addToAcciones(acc6)
		ent1.addToAcciones(acc7)
		ent1.addToAcciones(acc8)
		ent1.save()

		println "Entrenamiento 1: ${ent1}"
		println "Accion 6: ${acc6}"
		println "Accion 7: ${acc7}"
		println "Accion 8: ${acc8}"

		println "************ FIN DE BOOTSTRAP - ENTRENANDO *****************"

		println "************** BOOTSTRAP - PRUEBAS **********************"

		pepe.agregarRutina(rut2);
		println "Rutina agregada"
		//println pepe.errors.each{println it}
		
		println "************** FIN BOOTSTRAP - PRUEBAS **********************"

		
    }
    def destroy = {
    }
}

