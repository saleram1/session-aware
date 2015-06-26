package com.freerange.commons.auths

import org.apache.shiro.SecurityUtils
import org.springframework.web.context.request.RequestContextHolder as RCH


class SessionService {

	  def refreshSession() {
	    if(log.infoEnabled){ log.info "Resetting lastActivityTime attribute of current session" }

	    registerSessionActivity()
	    response.status = 200
	    render(text: "OK")
	  }

	  /**
	   * Register activity of the current session to avoid timeout and automatic logout.
	   */
	  void registerSessionActivity(){
	    def request = RCH.currentRequestAttributes()?.getCurrentRequest()
	    def nowIsh = System.currentTimeMillis() - 1000
	    String nowTime = new java.text.SimpleDateFormat("HH:mm:ss:SS").format(nowIsh)

	    if (session) {
	      if (log.debugEnabled) {
	        if (!getLastActivityTime()) {
              log.debug "Refreshing session for user [${getLoggedOnUser()}] with session [${session?.id}]: no previous last active time, new last active time is ${nowTime}"
	        } else {
	          String lastActiveTime = new java.text.SimpleDateFormat("HH:mm:ss:SS").format(getLastActivityTime())
	          log.debug "Refreshing session for user [${getLoggedOnUser()}] with session [${session?.id}]: last active at ${lastActiveTime}, now is ${nowTime}"
	        }
	      }
	      session.lastActivityTime = nowIsh
	    } 
		else {
          log.warn "No session found for user [${getLoggedOnUser()}]"
	    }
	  }

	  public Long getLastActivityTime() {
	    return session?.lastActivityTime
	  }
	
	  public def getSession() {
	    return RCH.currentRequestAttributes()?.getSession()
	  }
	
	
	public User getLoggedOnUser() {
		String username = SecurityUtils.subject.principal.toString()
		log.info "Checking for ${username} in DB"
		User.findByUsername(username)
	}
}