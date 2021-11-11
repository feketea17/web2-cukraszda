<div class="page-heading about-heading header-text" style="background-image: url(assets/images/heading-3-1920x500.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h2>Hírek</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

  
  
<?php
$dbh = new PDO('mysql:host=localhost;dbname=cukraszda123', 'root', '',
                            array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
$result = $dbh->query("SELECT * FROM posts ORDER BY postid DESC")->fetchAll();
?>

    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="row">
              <?php foreach ($result as $r): ?>
              <div class="col-md-6">
                <div class="service-item">
                <img src="<?php echo SITE_ROOT . '/assets/images/' . $r['image']; ?>" class="img-fluid" alt="">

                  <div class="down-content">
                    <h4><a href="<?php echo SERVER_ROOT . 'nyitolap'; ?>"><?php echo $r['title']; ?></a></h4>
                    <?php echo $r['body']; ?>
                    <p style="margin: 0;">&nbsp;&nbsp; <b><?php echo $r['author']; ?></b> &nbsp;&nbsp;|&nbsp;&nbsp; <i><?php echo date('F j, Y', strtotime($r['created_at'])); ?></i> &nbsp;&nbsp;</p>
                  </div>
                </div>
              </div>
			<?php endforeach; ?>
              

            </div>
          </div>
        </div>
      </div>
    </div>