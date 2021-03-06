<?php
include "../BaseDeDatos/conect.php";

$usuario = $_REQUEST["usuario"];
$clave = $_REQUEST["clave"];

//verifica si el usuario esta creado, tiene la misma contraseña y esta habilitado para entrar 
$SQL="SELECT * from usuario WHERE usuario='$usuario' AND clave='$clave' AND Habilitado=true";

if(!$respuesta = $con->query($SQL)){
	echo $con->error;
}
else{
	if($fila = $respuesta->fetch_assoc()){
		session_start();
		$_SESSION["id"]=$fila["Identificacion"];
		$_SESSION["tipo"]=$fila["Tipo"];
		$_SESSION["nivel"]=$fila["Nivel"];
		header("Location: ../buscador.php");
	}else{
		header("Location: login.php?error=El usuario y/o la contraseña en invalida o el usuario no esta activado");
	}
}
?>