
import com.freerange.commons.auths.User
import com.freerange.commons.auths.Role

import org.apache.shiro.crypto.hash.Sha512Hash

// initialization time - server startup gets new WebApplicationContext
class BootStrap {

    def init = { servletContext ->
        populateUserAndRoleTables()
    }

    void populateUserAndRoleTables() {
        def adminRole = new Role(name: "ROLE_ADMIN")
        adminRole.addToPermissions("*:*")
        adminRole.save(flush: true)

        def admin =
            new User(username: "administrator", enabled: true,
                    passwordHash: new Sha512Hash("password4321").toHex())
        // more are required
        admin.with {
            firstName = "Joseph"; lastName = "Smith"
            email = "joseph.p.smith@nospam.net"
//            enabled = true
        }

	// ROLE setup
        admin.addToRoles(adminRole)
        assert admin.save(failOnError: true)
        println("User '${admin}' created successfully")
    }
}
