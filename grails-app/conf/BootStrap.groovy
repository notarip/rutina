import rutina.*


class BootStrap {

    def init = { servletContext ->

		Rol userRole = new Rol(nombre:"USER").save()
		Rol adminRole = new Rol(nombre:"ADMIN").save()
		Rol coachRole = new Rol(nombre:"COACH").save()
		
		Campo mega1 = new Campo(nombre:"mega1").save()
		
		Campo mega2 = new Campo(nombre:"mega2").save()
		
		
		Usuario pablo = new Usuario(nombre:"pablo", email:"pablo@user.com", password:"123456")
		pablo.addToRoles userRole
		pablo.save()
		
		Usuario jose = new Usuario(nombre:"jose",email:"jose@admin.com", password:"123456")
		jose.addToRoles(adminRole)
		jose.addToRoles(coachRole)
		jose.save()
		
		Usuario pepe = new Usuario(nombre:"pepe",email:"pepe@admin.com",password:"123456")
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
	/******************************************************/

		Ejercicio ej1 = new Ejercicio (grupo:"biceps",nombre:"Zottman Preacher Curl", descripcion:"http://www.mipielsana.com/zottman-preacher-curl/", peso:true,repeticiones:true, tiempo:false).save()
		Ejercicio ej2 = new Ejercicio (grupo:"biceps",nombre:"Zottman Curl", descripcion:"http://www.mipielsana.com/zottman-curl/", peso:true,repeticiones:true, tiempo:false).save()
		Ejercicio ej3 = new Ejercicio (grupo:"biceps",nombre:"Wide Grip EZ Bar Curl", descripcion:"http://www.mipielsana.com/wide-grip-ez-bar-curl/", peso:true,repeticiones:true, tiempo:false).save()
		
		Rutina rut1 = new Rutina(nombre:"rut1", usuario:pablo).save()
		Rutina rut2 = new Rutina(nombre:"rut2", usuario:pablo).save()

		Serie serie1041 = new Serie(peso:10,repeticiones:10, series:4,descanso:1).save()
		Serie serie1521 = new Serie(peso:15,repeticiones:10, series:2,descanso:1).save()

		Accion acc1 = new Accion(rutina:rut1, ejercicio:ej1, series:[serie1041]).save()
		Accion acc2 = new Accion(rutina:rut1, ejercicio:ej2, series:[serie1041]).save()
		Accion acc3 = new Accion(rutina:rut1, ejercicio:ej3, series:[serie1041]).save()
			
		Accion acc4 = new Accion(rutina:rut2, ejercicio:ej1, series:[serie1521]).save()
		Accion acc5 = new Accion(rutina:rut2, ejercicio:ej2, series:[serie1521]).save()			


		rut1.addToAcciones(acc1)
		rut1.addToAcciones(acc2)
		rut1.addToAcciones(acc3)
		rut1.save()

		rut2.addToAcciones(acc4)
		rut2.addToAcciones(acc5)
		rut2.save()
		
    }
    def destroy = {
    }
}
