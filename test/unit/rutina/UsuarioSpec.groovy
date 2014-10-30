package rutina

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
@Mock(Usuario)
class UsuarioSpec extends Specification {

    def setup() {
    }
    def cleanup() {
    }


    

    def "testear nombre nulo o blanco"() {

        given:
            mockForConstraintsTests(Usuario)
            Usuario usu1 = new Usuario (nombre :"", email:"pablo@pablo", password:"123456")

    	when:
            usu1.validate()
    	    	
    	then:
            usu1.errors.hasFieldErrors("nombre") 
    }

    def "el sexo debe ser Femenino, Masculino u Otro"(){

        given:
            mockForConstraintsTests(Usuario)
            Usuario usu1 = new Usuario(sexo:"Hermafrodita") 

        when:
            usu1.validate()

        then:
            usu1.errors.hasFieldErrors("sexo")

    }

}
