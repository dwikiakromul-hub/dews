<?php

/***
 * Portal API BPBD || BPBD DKI JAKARTA from version 0.1
 * About : Rest API BPBD DKI JAKARTA.
 * Last modified: 13 Mei 2021
 * Author : Dwiki Akromul H
 ***/


header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
header("Access-Control-Allow-Methods: POST, GET");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

date_default_timezone_set('Asia/Jakarta');

require_once "koneksi.php";

$method = $_SERVER['REQUEST_METHOD'];
$url = isset($_GET['url']) ? $_GET['url'] : '/';
$url = explode("/", $url);

if ($method == 'POST') {
    switch ($url[0]) {

        default:
            global $connect;
            if (!empty($_GET["id"])) {
                $id = $_GET["id"];
            }
            $check = array('id' => '');
            $result = mysqli_query($connect, "INSERT INTO last_online SET               
              id = $id,
              waktu =  now(),
              status = '1'");

            if ($result) {
                $response = array(
                    'status' => 1,
                    'message' => 'insert Success'
                );
            } else {
                $response = array(
                    'status' => 0,
                    'message' => 'insert Failed'
                );
            }

            header('Content-Type: application/json');
            echo json_encode($response);

            break;
    }
}
