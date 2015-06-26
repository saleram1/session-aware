package com.freerange.commons.auths

/**
 * Privileged User or Principal of the web application
 *
 */
class User {
    String username
    String firstName
    String lastName
    String email
    String passwordHash
    
    static hasMany = [ roles: Role, permissions: String ]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
        firstName(nullable: true)
        lastName(nullable: true)
        email(nullable: false, blank: false)
    }

	@Override
	String toString() {
		"${username}"
	}
}
