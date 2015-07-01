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
        <p>Public Site for E*TRADE Financial - Choose an account type that's right for you.</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-3">
          <h2 style="color:#069">WHY E*TRADE?</h2>
          	<p>Invest &amp; Trade with an Industry Leader!<br>
	
			 Aesthetic messenger bag gluten-free, lo-fi mixtape eu proident culpa. Cillum try-hard vinyl, dreamcatcher sint tempor food truck letterpress cronut keytar.
			
			</p>
	        <p><a class="btn btn-primary">Learn more &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2 style="color:#069">INVESTING &amp; TRADING</h2>
          <p>Flexitarian Marfa lomo, cupidatat Blue Bottle cold-pressed chillwave vinyl deserunt minim ethical blog fugiat crucifix authentic. Helvetica Marfa flannel, consectetur duis sint mea culpa nesciunt.
	Thundercats, sed blog tofu ea elit art party swag.</p>
       		
 		<p><a class="btn btn-primary">Learn more &raquo;</a></p>
       </div>
        <div class="col-lg-5">
          <h2 style="color:#069">RETIREMENT ACCOUNTS</h2>
          <p>Sed cillum artisan viral 90's post-ironic. Chambray small batch messenger bag cold-pressed try-hard. Deserunt selfies kitsch, Truffaut try-hard freegan blog.  Stumptown vinyl PBR&B post-ironic, typewriter pork belly irure migas messenger bag hoodie Marfa in. Williamsburg, Pitchfork Pinterest.</p>
       	  
<p><a class="btn btn-primary">Learn more &raquo;</a></p>
        </div>
      </div>
    </div> <!-- /container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${resource(dir: 'initializr/js/vendor', file: 'jquery-1.10.1.js')}"></script>
    <script src="${resource(dir: 'initializr/js/vendor', file: 'bootstrap.js')}"></script>
  </body>
</html>
