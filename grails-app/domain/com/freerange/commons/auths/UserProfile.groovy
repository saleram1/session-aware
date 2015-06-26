package com.freerange.commons.auths

/**
 * Configurable and editable User preferences
 *
 */
class UserProfile {
    Integer sessionInactivityTimeout

    static constraints = {
        sessionInactivityTimeout(nullable: false, min: 3*60000, max: 120*60000)
    }
}
