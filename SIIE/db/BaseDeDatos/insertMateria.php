<?php
//incluye la conexion
include 'conect.php';

//ingresar dato de formulario
$nombrem=$_REQUEST['nombrem'];
$especialidad=$_REQUEST['especialidad'];
$plananio=$_REQUEST['plananio'];
$equivalentea=$_REQUEST['equivalentea'];
if($equivalentea==""){
	$equivalentea='NULL';
}


//consulta
$SQL="INSERT INTO materia(Nombre,Especialidad,Plan_Anio,Equivalente_A) VALUES('$nombrem','$especialidad',$plananio,$equivalentea)";

//inserta y verifica errores
if(!$a=$con->query($SQL))
	{
		echo $con->error;
	}
else
	{
		/* Redireccion */
		header ('location: ../Formularios/formMateria.php');
	}
?>