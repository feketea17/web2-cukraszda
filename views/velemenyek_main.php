<div class="page-heading about-heading header-text" style="background-image: url(assets/images/heading-1-1920x500.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h2>Vélemények</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="send-message">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
          </div>
          <div class="col-md-8">
            <div class="contact-form">
              <form action="velemenyez" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <fieldset>
						<label for="tema">Téma:</label><input type="text" class="form-control" name="tema" id="tema" required pattern="[a-zA-Z][\-\.a-zA-Z0-9_]{3}[\-\.a-zA-Z0-9_]+"><br>
					</fieldset>
					<fieldset>
						<textarea name="velemeny" id="velemeny" required pattern="[a-zA-Z][\-\.a-zA-Z0-9_]{3}[\-\.a-zA-Z0-9_]+"></textarea>
					</fieldset>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" value="Küldés" class="filled-button">Küldés</button>
                    </fieldset>
                  </div>
				  <div class="col-lg-12">
                    <fieldset>
                      <h2><br><?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br><br \></h2>
                    </fieldset>
                  </div>

                    <h2>Korábbi vélemények megtekintése</h2>

               
<?php
$servername = "localhost";
$username = "cukraszda123";
$password = "Melegszendvics";
$dbname = "cukraszda123";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM velemenyek order by id DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br> Id: ". $row["id"] . "&emsp; Téma: " . $row["tema"] . "<br> Vélemeny: " . $row["velemeny"] . "<br> Név: " . $row["userlastname"] . " " . $row["userfirstname"] . "&emsp; &emsp; &emsp; Dátum: " . $row["datum"] . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>
                  
                </div>
              </form>
            </div>
          </div>
