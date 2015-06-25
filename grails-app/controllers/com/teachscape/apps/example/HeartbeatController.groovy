package com.teachscape.apps.example


/**
 * This is the other end of the client-side JS
 *
 */
class HeartbeatController {
	def defaultAction = 'index'
	def allowedMethods = ['index': 'POST', 'refresh': 'POST']
	def sessionService

	  /**
	   * Returns the time remaining until a user times out (in seconds).
	   */
	  def index() {
	    def timeout
	    def secsIdleTime = getSessionIdleTime()

	    if (secsIdleTime < 0) {
	      timeout = 0
	    }  
	    else {
	      timeout = session.maxInactiveInterval - secsIdleTime
	    }
		log.info "Running session timout check. session was idle for: [${secsIdleTime}], seconds before timeout [${timeout}]"

	    if (timeout <= 0) {
	        log.info "Logout for user [${sessionService.getLoggedOnUser()}]: Session was idle for [${secsIdleTime}] secs, invalidating session [${getSession().id}] with timeout [${timeout}]"
        }
	    render(text: timeout.toString())
	  }

	  /**
	   * Resets the session lastActivityTime property.
	   */
	  def refresh() {
	    log.info "Resetting lastActivityTime attribute of current session..."
	
	    try { 
			sessionService.registerSessionActivity()
		}
		finally {
			if (!session.lastActivityTime) { log.warn "Error in  session setup" }
		}	
	    response.status = 200
	    render(text: "OK")
	  }


	private Integer getSessionIdleTime(){
	  if (sessionService.getLastActivityTime()) {
	    return (System.currentTimeMillis() - sessionService.getLastActivityTime()) / 1000
	  } 
	  else {
	    return -1
	  }
	}
}