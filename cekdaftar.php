<?php
include 'koneksi.php';
$username = $_POST['username'];
$telpon = $_POST['telpon'];
$email = $_POST['email'];
$password = $_POST['password'];
$level   = $_POST['level'];
    $sql = "SELECT * FROM user where username='$username'";
    $result = mysqli_query($koneksi, $sql);
    if(mysqli_num_rows($result) == 0)
    {
        $pass = password_hash($password, PASSWORD_DEFAULT);
         mysqli_query($koneksi,"insert into user (username,password,email,telpon,level)
         values ('$username','$pass','$email','$telpon','$level')");
         header('Location: ../login/index.php');
    } else  { echo '<script language="javascript">
             window.alert("username sudah digunakan, silahkan gunakan nama lain");
             window.location.href="daftar.php?alert=gagal";
             </script>';
    }



?>