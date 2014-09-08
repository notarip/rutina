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

    void "test crear Usuario"() {

    	when:
    	Usuario usu1 = new Usuario (nombre :"Pablo", email:"pablo@pablo", password:"123456")
    	
    	then:
    	usu1  && usu1.getNombre()=="Pablo" && usu1.getEmail()=="pablo@pablo" && usu1.getPassword()=="123456"
    }
}
