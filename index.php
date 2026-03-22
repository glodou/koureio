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

<?php include_once 'includes/footer.php'; ?>