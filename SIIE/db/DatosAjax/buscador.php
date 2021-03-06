<?php
include '../BaseDeDatos/conect.php';

$filtro=$_REQUEST['filtro'];
$dato=$_REQUEST['dato'];
$stabla=$_REQUEST['stabla'];
$SQL="SELECT * FROM $stabla WHERE $filtro LIKE '$dato%'";

if(!$respuesta = $con->query($SQL)){
	echo $con->error;
}

echo '<div style="display:table;border:1px solid black" >';
echo '<div style="display:table-row;background-color: #5d5e5d"> 
	<div class="titulo"> DNI</div> 
	<div class="titulo"> Apellido</div> 
	<div class="titulo"> Nombre</div>  
	<div class="titulo"> Sexo</div> 
	<div class="titulo"> Fecha de nacimiento</div>
	<div class="titulo"> Lugar de nacimiento</div> 
	<div class="titulo"> Nacionalidad</div> 
	<div class="titulo"> Domicilio</div> 
	<div class="titulo"> Codigo postal</div> 
	<div class="titulo"> Telefono</div> 
	<div class="titulo"> Celular</div> 
	<div class="titulo"> Correo</div>    	
</div>';

	
	while($fila = $respuesta->fetch_assoc())
	{	
		switch($stabla){
			case "alumno":
				echo '<a href="alumno.php?Id='.$fila['Id_Alumno'].'" class="seleccionable">';
				
				echo '<div class="titulo">'.$fila['Numero_de_documento'].'</div>';
				echo '<div class="titulo">'.$fila['Apellido'].'</div>';
				echo '<div class="titulo">'.$fila['Nombre'].'</div>';
				if($fila['Sexo']=='M')
				{
				echo '<div class="titulo"> Masculino </div>';
				}
				else
				{
				echo '<div class="titulo"> Femenino </div>';
				}
				
				echo '<div class="titulo">'.date("d/m/Y",strtotime($fila['Fecha_de_nacimiento'])).'</div>';
				echo '<div class="titulo">'.$fila['Lugar_de_nacimiento'].'</div>';
				echo '<div class="titulo">'.$fila['Nacionalidad'].'</div>';
				echo '<div class="titulo">'.$fila['Domicilio'].' </div>';
				echo '<div class="titulo">'.$fila['Codigo_postal'].'</div>';
				echo '<div class="titulo">'.$fila['Telefono'].'</div>';
				echo '<div class="titulo">'.$fila['Celular'].'</div>';
				echo '<div class="titulo"> <div align=center> - </div></div></a>';
			break;
			
			case "profesor":
				echo '<tr bgcolor="#FFF">';
				echo '<td>'.$fila['Numero_de_documento'].'</td>';
				echo '<td>'.$fila['Apellido'].'</td>';
				echo '<td>'.$fila['Nombre'].'</td>';
				if($fila['Sexo']=='M')
				{
				echo '<td> Masculino </td>';
				}
				else
				{
				echo '<td> Femenino </td>';
				}
				
				echo '<td>'.$fila['Fecha_de_nacimiento'].'</td>';
				echo '<td>'.$fila['Lugar_de_nacimiento'].'</td>';
				echo '<td>'.$fila['Nacionalidad'].'</td>';
				echo '<td>'.$fila['Domicilio'].'</td>';
				echo '<td>'.$fila['Codigo_postal'].'</td>';
				echo '<td>'.$fila['Telefono'].'</td>';
				echo '<td>'.$fila['Celular'].'</td> ';
				echo '<td>'.$fila['Correo'].'</td> </tr>';
				break;
				
			case "tutor":
				echo '<tr bgcolor="#FFF">';

				echo '<td>'.$fila['Id_Tutor'].'</td>';
				echo '<td>'.$fila['Numero_de_documento'].'</td>';
				echo '<td>'.$fila['Apellido'].'</td>';
				echo '<td>'.$fila['Nombre'].'</td>';
				if($fila['Sexo']=='M')
				{
				echo '<td> Masculino </td>';
				}
				else
				{
				echo '<td> Femenino </td>';
				}
				
				echo '<td>'.$fila['Fecha_de_nacimiento'].'</td>';
				echo '<td>'.$fila['Lugar_de_nacimiento'].'</td>';
				echo '<td>'.$fila['Nacionalidad'].'</td>';
				echo '<td>'.$fila['Domicilio'].' </td>';
				echo '<td>'.$fila['Codigo_postal'].'</td>';
				echo '<td>'.$fila['Telefono'].'</td>';
				echo '<td>'.$fila['Celular'].'</td>';
				echo '<td> <div align=center> - </div> </tr>';
			break;
			
			case "curso":
					echo '<td>'.$fila['Id_Curso'].'</td>';
					echo '<td>'.$fila['Anio'].'</td>';
					echo '<td>'.$fila['Division'].'</td>';
					echo '<td>'.$fila['Especialidad'].'</td> </tr>';
			break;
			
			case "materia":
					echo '<td>'.$fila['Id_Materia'].'</td>';
					echo '<td>'.$fila['Nombre'].'</td>';
					echo '<td>'.$fila['Anio'].'</td>';
					echo '<td>'.$fila['Ciclo_lectivo'].'</td> </tr>';
		}
	}
?>