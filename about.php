<?php 
 $page_title="About Page";
include_once 'includes/header.php';
include 'db/config.php';

?>

<div class="main">
        <h1>About Page</h1>
</div >

<div class="about-container">
    <?php 
$ab="SELECT* FROM about ORDER BY about_id DESC LIMIT 1";
$res=mysqli_query($conn,$ab);
$row=mysqli_fetch_assoc($res);
    ?>

    <div class="col">
    <h2><?php echo $row['title']; ?></h2>
    <p><?php echo $row['content']; ?></p>

    </div>

    <div class="col">
        <img src="images/barber.jpg" width="70%">
    </div>

</div>




<?php include_once 'includes/footer.php'; ?>   