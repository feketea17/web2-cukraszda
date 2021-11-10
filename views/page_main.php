<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
	    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
        <title>Valami Cukrászda</title>
		
		<!-- CSS: Bootstrap -->
    <link rel="stylesheet" type="text/css" href="style/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="style/main_style.css">
		
		<!-- CSS: egyéb -->
		<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">
		<link rel="stylesheet" type="text/css" href="assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="assets/css/owl.css">
		
        <?php if($viewData['style']) echo '<link rel="stylesheet" type="text/css" href="'.$viewData['style'].'">'; ?>
    </head>
	
    <body>
		<!-- Preloader -->
		<div id="preloader">
			<div class="jumper">
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>  
		<!-- Preloader End -->

		<!-- Header -->
		<header class="">
			<nav class="navbar navbar-expand-lg">
				<div class="container">
					<a class="navbar-brand" href="index.php"><h2>Valami <em>Cukrászda</em></h2></a><br>
					
					<!-- User név kiírása -->
					<div id="user"><?= $_SESSION['userlastname']." ".$_SESSION['userfirstname'] ?></div>
					
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <div class="foo">	<?php echo Menu::getMenu($viewData['selectedItems']); ?> </div>
		
            </ul>
        </li>
        </div>
      </nav>
    </header>
	
	<section>
		<?php if($viewData['render']) include($viewData['render']); ?>
	</section>
		
		
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <p>Copyright © <?= date("Y") ?> Valami Cukrászda</p>
            </div>
          </div>
        </div>
      </div>
    </footer>
		
	<!-- Bootstrap core JavaScript -->
    <script src="style/jquery/jquery.min.js"></script>
    <script src="style/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    </body>
</html>
