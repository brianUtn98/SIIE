<?php
//incluye la conexion
include 'conect.php';
//ingresar dato de formulario
$nombre=$_REQUEST["nombre"];
$apellido=$_REQUEST["apellido"];
$dni=$_REQUEST["dni"];
$sexo=$_REQUEST["sexo"];
$fechanac=$_REQUEST["fechanac"];
$nacionalidad=$_REQUEST["nacionalidad"];
$domicilio=$_REQUEST["domicilio"];
$localidad=$_REQUEST["localidad"];
$codpost=$_REQUEST["codpost"];
$telefono=$_REQUEST["tel"];
$celular=$_REQUEST["cel"];
$lugarnac=$_REQUEST["lugarnac"];

//consulta
$SQL="INSERT INTO tutor (Numero_de_documento,Apellido,Nombre,Sexo,Fecha_de_nacimiento,Lugar_de_nacimiento, 
Nacionalidad,Domicilio,Codigo_postal, Telefono,Celular) VALUES
($dni,'$apellido','$nombre','$sexo','$fechanac','$lugarnac','$nacionalidad',
'$domicilio $localidad',$codpost,'$telefono','$celular')";

//inserta y verifica errores
if(!$a=$con->query($SQL))
	{
		echo $con->error;
	}
else
	{
		/* Redireccion */
		header('Location: ../Formularios/formTutor.php');
	}
?>