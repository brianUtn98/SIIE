<?php
include 'conect.php';

$SQL="SELECT * from localidad ORDER BY Nombre_Localidad";

if(!$respuesta = $con->query($SQL)){
	echo $con->error;
}
echo '<option>Seleccione localidad</option>';
while($fila = $respuesta->fetch_assoc())
{	
	echo '<option value="'.$fila['Id_Localidad'].'">'.$fila['Nombre_Localidad'].'</option>';
}


?>