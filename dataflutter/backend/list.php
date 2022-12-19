<?php 
$connection = new mysqli("localhost","root","","note_app");
$data= mysqli_query($connection, "select * from note");
$data= mysqli_fetch_all($data, MYSQLI_ASSOC);
echo json_encode($data);
