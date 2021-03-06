<?php
//conectar con el servidor y la base de datos
//new mysqli (servidor,usuario,contraseña,base de datos)
$con = new mysqli ("localhost","root","","dbmalvinas");

//verifica si hay errores y si los hay informa
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
?>