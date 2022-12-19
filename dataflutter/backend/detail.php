<?php 
    $connection = new mysqli("localhost","root","",“note_app");
    $data       = mysqli_query($connection, "select * from note where id=".$_GET['id']);
    $data       = mysqli_fetch_array($data, MYSQLI_ASSOC);

    echo json_encode($data);
