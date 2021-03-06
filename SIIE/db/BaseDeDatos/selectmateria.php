<?php
include 'conect.php';

$SQL="SELECT * from materia ORDER BY Nombre";

if(!$respuesta = $con->query($SQL)){
	echo $con->error;
}
echo '<option value="">Seleccione materia</option>';
while($fila = $respuesta->fetch_assoc())
{	
	echo '<option value="'.$fila['Id_Materia'].'">'.$fila['Nombre'].'</option>';
}

?>