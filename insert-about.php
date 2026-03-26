<?php include 'db/config.php';?>

<form method="POST">
    <input type="text" name="title" placeholder="Τίτλος"><br>
    <textarea name="content" placeholder="Κείμενο"></textarea><br>
    <button type="Submit">Αποθήκευση</button>
</form>

<?php 
 if($_POST){
    $title= $_POST['title'];
    $content= $_POST['content'];

    $conn->query("INSERT INTO about(title,content)VALUES ('$title','$content')");
    echo "Επιτυχής καταχώρηση";

 }
 ?>