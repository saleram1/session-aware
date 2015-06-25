
    // Variables for authentication polling
    var warningBox = false;
    var secondsBeforeLogoutAlert = 1 * 60;
    var heartbeatPollInterval = 10 * 1000;


/**
 * Checks every (heartbeatPollInterval) milliseconds to see if a user has timed out or will time out within
 * (secondsBeforeLogout), redirecting to login or displaying a warning
 */
authenticationPoll = function() {
    console.log("authenticationPoll");
    window.setInterval(
    function() {
        checkTimeout({
            error: function() {
                redirectToLoginUrl();
            },
            success: function(data) {
                var secondsRemaining = parseInt(data);
                if (isNaN(secondsRemaining) || secondsRemaining <= 0) {
                    redirectToLoginUrl();
                } else if (!warningBox && secondsRemaining <= secondsBeforeLogoutAlert) {
                    if (displayTimeoutWarning()) {
                        registerSessionRefresh();
                    }
					else {
						redirectToLoginUrl();
					}
                }
            }
        });
    },
    heartbeatPollInterval
    );
};

checkTimeout = function(callbacks) {
    console.log("checkTimeout");
    $.ajax({
        type: 'POST',
        url: "/session-aware/heartbeat/",
        dataType: "text",
        success: callbacks.success,
        error: callbacks.error
    });
};

redirectToLoginUrl = function() {
    console.log("redirectToLoginUrl");
    window.onbeforeunload = function allowWindowExit(event) {
    }
    document.location.href = "/session-aware/auth/";	  // sorry.  back to Login auth home
};

displayTimeoutWarning = function() {
    return confirm("Your Tomcat [app-name here] session is about to expire!  Shall we renew it for you?");
};

registerSessionRefresh = function(sel) {
    console.log("registerSessionRefresh");
    warningBox = false;
    $.ajax({
        type: 'POST',
        url: "/session-aware/heartbeat/refresh",
        dataType: "text",
    });
};


$(document).ready(authenticationPoll());
