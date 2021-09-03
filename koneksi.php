
<?php
date_default_timezone_set('Asia/Jakarta');

$hostname = "localhost";
$database = "db_dews";
$username = "root";
$password = "";
$connect = mysqli_connect($hostname, $username, $password, $database);
// script cek koneksi   
if (!$connect) {
    die("Koneksi Tidak Berhasil: " . mysqli_connect_error());
}
