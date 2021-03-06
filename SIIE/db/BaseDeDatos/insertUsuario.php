<?php
//incluye la conexion
include 'conect.php';
//ingresar dato de formulario
$usuario=$_REQUEST["usuario"];
$clave=$_REQUEST["clave"];
$tipo=$_REQUEST["tipo"];
$dni=$_REQUEST["dni"];

//verifica a que tabla correcponde el dato
$tabla="";
switch($tipo){
	case "ALU":
		$tabla="Alumno";
	break;
	
	case "DOC":
		$tabla="Docente";
	break;
	
	case "TUT":
		$tabla="Tutor";
	break;
}

//verifica si no hay un usuario registrado con ese nombre o si ese usuario no esta registrado la tabla que pertenece 
$SQL="SELECT * from usuario 
		WHERE Usuario='$usuario' OR Identificacion IN (
			SELECT Id_$tabla FROM $tabla WHERE Numero_de_Documento=$dni
			)
		AND Tipo = '$tipo'";

//verifica si ocurrio un problema con la consulta
if(!$respuesta = $con->query($SQL)){
	//si ocurrio un problema lo informa
	echo $con->error;
}
else{
	//sino sigue con el resto del programa 
	
	//verifica si la cantidad de filas es iguala a cero (indicando que no hay usuario con el mismo nombre)
	if($respuesta->num_rows == 0){
		//de no existir usuario con ese nombre lo ingresa
		
		

		//ingresa el usuario y le pone como identificador el id de la tabla que corresponda
		$SQL="INSERT INTO usuario(Usuario,Clave,Tipo,Identificacion) VALUES
		('$usuario','$clave','$tipo',(SELECT id_$tabla FROM $tabla WHERE Numero_de_Documento=$dni))";

		//inserta y verifica errores
		if(!$a=$con->query($SQL))
			{
				echo $con->error;
			}
		else
			{
				/* Redireccion */
				header('Location: ../RegistroLogeo/regsucces.php');
			}
	}
	else{
		header('Location: ../RegistroLogeo/regfail.php');
		
	}
}
?>