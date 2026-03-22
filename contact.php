<?php 
 $page_title="Contact Page";
include_once 'includes/header.php'; 
include 'db/config.php';
?>

 <div class="main">
        <h1>Contact Page</h1>
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

<h2>Χάρτης</h2>
<iframe width="100%" height="300" src="https://maps.google.com/maps?q=thessaloniki&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>

<h2>Επικοινωνία</h2>

<form method="POST">
<input type="text" name="firstname" placeholder="Όνομα"><br>
<input type="text" name="lastname" placeholder="Επώνυμο"><br>
<input type="text" name="phone" placeholder="Τηλέφωνο"><br>
<input type="email" name="email" placeholder="Email"><br>
<textarea name="text" placeholder="Μήνυμα"></textarea><br>
<button type="submit">Αποστολή</button>


</form>

<?php

if ($_POST){
    $fn=$_POST['firstname'];
    $ln=$_POST['lastname'];
    $ph=$_POST['phone'];
    $em=$_POST['email'];
    $tx=$_POST['text'];

 $conn->query("INSERT INTO contact (firstname,lastname,phone,email,text)
    VALUES ('$fn','$ln','$ph','$em','$tx')");

    echo "Εστάλη επιτυχώς";
}
?>

<?php include_once 'includes/footer.php'; ?>   