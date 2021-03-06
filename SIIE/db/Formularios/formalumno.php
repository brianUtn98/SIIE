<html>

<head>
	<link href="../css/divisor3.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="../javascript/validacionalumno.js"> </script>
	<script language="JavaScript" src="../javascript/validacionIngreso.js"> </script>
</head>


<body bgcolor=#c1c1c1>

	<header>
		<h2> 
			<div align=center> 
				<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #000000"> &nbsp; <br> Datos de alumno <br> &nbsp;</P>  
			</div>
		</h2> 
	</header>

	<form action="../basededatos/insertAlumno.php" method='get'  name="formalumno" align=center>
	<BR>
		<table  cellspacing=7 cellpadding=7 align=center>
			<tr>  
				<td>  Nombre <br> 
					<input type="text" name='nombre' id='nombre' onkeypress="return validacion_letras()"> 
				</td> 
				<td> Apellido <br> 
					<input type="text" name='apellido' id='apellido' onkeypress="return validacion_letras()"> 
				</td> 
				<td> Num doc <BR> 
					<input type="text" name='dni' id='dni' onkeypress="return validacion_numeros()"> </td> 
			</tr>
			<tr> 
				<td> Sexo <BR> 
					Mujer<input type='radio' name='sexo' value='F' checked id='sexo'> <br> 
					Hombre<input type='radio' name='sexo' value='M' id='sexo'> 
				</td> 
				<td> Fecha de nacimiento <br> 
					<input type='date' name='fechanac' id='fechanac' width="150"> 
				</td>
			</TR>
				<td> Lugar de nacimiento <br> 
					<input type="text" name='lugarnac' id='lugarnac' onkeypress="return validacion_letras()"> 
				</td> 
				<td> Nacionalidad <br> 
					<input type="text" name='nacionalidad' id='nacionalidad' onkeypress="return validacion_letras()"> 
				</td>
			</tr>
			<tr> 
				<td> Domicilio <br> 
					<input type=" text" name='domicilio' id='domicilio' >
				</td> 
				<td> Localidad <br>  
					<select name='localidad' id='localidad' onkeydown="validacion_letras()"> <?php include "../BaseDeDatos/selectlocalidad.php"; ?> </select>  
				</td> 
				<td> Codigo postal <br> 
					<input type="text" name='codpost' id='codpost' onkeypress="return validacion_numeros()"> 
				</td> 
			</tr>
			<tr> 
				<td> Telefono <br> 
					<input type="text" name='tel' id='tel' onkeypress="return validacion_telefono()"> 
				</td> 
				<td> Celular <br> 
					<input type="text" name='cel' id='cel' onkeypress="return validacion_telefono()"> 
				</td> 
			</tr>
		</table>
	<input type="button" value="Cargar" name='Cargar' onclick="validacion();">

	<div align=center> 
		<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #717070"> <b> &nbsp; <br> &copy; 2017 - E.E.S.T N°11 ISLAS MALVINAS <br> &nbsp;     </P>   
	</div>
</body>
</html>
