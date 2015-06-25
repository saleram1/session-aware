<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'initializr', file: 'favicon.ico')}">
	<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'initializr/css', file: 'bootstrap.css')}" rel="stylesheet">

    <!-- Custom styles for this template -->
	<style>
	/* Move down content because we have a fixed navbar that is 50px tall */
	body {
	  padding-top: 50px;
	  padding-bottom: 20px;
	}
	</style>

	<g:layoutHead/>
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img src="https://cdn.etrade.net/1/14102016280.0/aempros/content/dam/etrade/en_US/desktop/Public/Global-elements/Logos/etrade_logo.jpg" />
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">&nbsp;</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Sessions</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">More goodies&hellip;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>

        </div><!--/.navbar-collapse -->
      </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
		<shiro:isLoggedIn>
			<h1>Hello, <strong><shiro:principal /></strong></h1>
		</shiro:isLoggedIn>

        <p>Welcome to a protected view.</p>
      </div>
    </div>

    <div class="container">
		<g:layoutBody/>

		<hr/>

		<footer>
			<p>&copy; 2015 Free Range Consultants, LLC</p>
		</footer>
	</div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'initializr/js/vendor', file: 'jquery-1.10.1.js')}"></script>
    <script src="${resource(dir: 'initializr/js/vendor', file: 'bootstrap.js')}"></script>
    <script src="${resource(dir: 'js', file: 'application.js')}"></script>
	<comment>The last include is custom application JS</comment>
  </body>
</html>