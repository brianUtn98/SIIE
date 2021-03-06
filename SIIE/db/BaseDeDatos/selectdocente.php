<html>
<body bgcolor="lightgray">

</body>
</html>
<?php
/* MYSQL */
//Conectar al server y a la base de datos
include 'conect.php';
//SELECT
$SQL="SELECT * FROM docente";

if(!$respuesta = $con->query($SQL)){
	echo $con->error;
}
/* MYSQL */
/* En pantalla */
echo '<table bordercolor=lightgrayblue border=5 cellpadding=5 bgcolor=white>';
echo '<tr> 
	<td> ID </td> 
	<td> DNI </td> 
	<td> Apellido  </td> 
	<td> Nombre </td>  
	<td> Sexo </td> 
	<td> Fecha de nacimiento </td>
	<td> Lugar de nacimiento </td> 
	<td> Nacionalidad   </td> 
	<td> Domicilio </td> 
	<td> Codigo postal </td> 
	<td> Telefono </td> 
	<td> Celular </td> 
	<td> Correo </td>    	
</tr>';

	
	while($fila = $respuesta->fetch_assoc())
	{	echo '<tr>';

		echo '<td>'.$fila['Id_Profesor'].'</td>';
		echo '<td>'.$fila['Numero_de_documento'].'</td>';
		echo '<td>'.$fila['Apellido'].'</td>';
		echo '<td>'.$fila['Nombre'].'</td>';
		if($fila['Sexo']='M')
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
		echo '<td>'.$fila['Celular'].'</td>';
		echo '<td>'.$fila['Correo'].'</td>'.'</tr>';
	}

	/*En pantalla*/
	?>