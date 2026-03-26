<?php 
 $page_title="Home Page";
include_once 'includes/header.php'; 
include 'db/config.php';
    
?>

    <div class="main">
        <h1>Home Page</h1>
    </div>
<h2> Ημερολόγιο</h2>

<table>
<tr>
<th>Day</th>
<th>Hours</th>
</tr>

<?php

$sql = "SELECT* FROM calendar";
$result = mysqli_query($conn,$sql);


while($row = mysqli_fetch_assoc($result))
{
echo "<tr>";
echo "<td>".$row ['day']."</td>";
echo "<td>".$row ['hours']."</td>";
echo "</tr>";
}
?> 
</table>

<h2> Σχετικά με μας</h2>


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

</div>    

<?php include_once 'includes/footer.php'; ?>