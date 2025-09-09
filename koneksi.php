<?php
$koneksi = mysqli_connect("localhost","root","","rapepepi");

// check connection
if (mysqli_connect_errno()){
    echo "Koneksi databese gagal : " . mysqli_connect_error();
}

?>