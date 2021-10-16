<div class="page-heading about-heading header-text" style="background-image: url(assets/images/heading-1-1920x500.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h2>Belépés</h2>
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
              <form action="beleptet" method="post">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="col-lg-12">
                    <fieldset>
                      <h2><br><?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br><br /></h2>
                    </fieldset>
                  </div>

                    <fieldset>
						<label for="login">Felhasználó:</label><input type="text" class="form-control" name="login" id="login" required pattern="[a-zA-Z][\-\.a-zA-Z0-9_]{3}[\-\.a-zA-Z0-9_]+"><br>
					</fieldset>
					<fieldset>
						<label for="password">Jelszó:</label><input type="password" class="form-control" name="password" id="password" required pattern="[\-\.a-zA-Z0-9_]{4}[\-\.a-zA-Z0-9_]+"><br>
					</fieldset>
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" value="Küldés" class="filled-button">Küldés</button>
                    </fieldset>
                  </div>
				          
                </div>
              </form>
            </div>
          </div>
