<html>
<head>
	<link href="../css/divisor3.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="../javascript/validacionIngreso.js"> </script>
</head>
<body bgcolor=#c1c1c1>
<header>
		<h2> 
			<div align=center> 
				<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #000000"> &nbsp; <br> Materias <br> &nbsp;     </P>
			</div>
		</h2>  
	</header>
	<form action="../basededatos/insertMateria.php" method='get'  name="formmateria">
			<table cellspacing=7 cellpadding=7 align=center>
				<tr>
					<td> Nombre <br>
					<input type="text" name='nombrem' id='nombrem' onkeypress="return validacion_letras(event)" onkeypress="return validacion_signos()"> </td> 
				</tr>
				<tr> 
					<td> Especialidad <br> 
					<input type="text" name='especialidad' id='especialidad' onkeypress="return validacion_letras(event)"> </td> 
				</tr>
				<tr> 
					<td> Plan año <br> 
					<input type="text" name='plananio' id='plananio' onkeypress="return validacion_numeros()"> </td> 
				</tr>
				<tr> 
					<td> Equivalente a... <br> 
					<select name='equivalentea' id='equivalentea'> <?php include "../BaseDeDatos/selectmateria.php"; ?> </select></td> 
				</tr>
			</table>
			<div align=center><input type="submit" value="Cargar"></div>
		</form>
	<div align=center>
		<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #717070"> <b> &nbsp; <br> &copy; 2017 - E.E.S.T Nº11 ISLAS MALVINAS <br> &nbsp;     </P>   
	</div>
</body>
</html>
