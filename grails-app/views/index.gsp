<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'initializr', file: 'favicon.ico')}">
    <title>Initializr Template HTML5 Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'initializr/css', file: 'bootstrap.css')}" rel="stylesheet">

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
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
          <g:link uri="/app" class="btn btn-success">Sign in</g:link>
      </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
		<img src="https://cdn.etrade.net/1/14102016280.0/aempros/content/dam/etrade/en_US/desktop/Public/Global-elements/Logos/etrade_logo.jpg" />
        <p>This hosts some of E*TRADE Financial's public content - choose an account type that's right for you.</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>WHY E*TRADE?</h2>
          	<p>
			</p>
	        <p><a class="btn btn-primary">Learn more &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>INVESTING &amp; TRADING</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
        <p><a class="btn btn-primary">Learn more &raquo;</a></p>
       </div>
        <div class="col-lg-4">
          <h2>RETIREMENT ACCOUNTS</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-primary">Learn more &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>EDUCATION</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-primary">Learn more &raquo;</a></p>
        </div>
      </div>

      <hr>

    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'initializr/js/vendor', file: 'jquery-1.10.1.js')}"></script>
    <script src="${resource(dir: 'initializr/js/vendor', file: 'bootstrap.js')}"></script>
  </body>
</html>
