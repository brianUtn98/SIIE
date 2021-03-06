<?php
	include "RegistroLogeo/verificateSession.php";
?>

<HTML>
<HEAD>
<script language="JavaScript" src="javascript/filtro.js"> </script>
<link href="css/buscador.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY bgcolor=#c1c1c1>
<FORM>
<h2> <div align=center> <P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #000000"> &nbsp; <br> Busquedas <br> &nbsp; </div>
<h2>Buscar en...<br> </h2>
<INPUT TYPE="Button" name="alumno" id="alumno" value="Alumnos" onclick="filtrador(this.value)"> 
<INPUT TYPE="Button" name="tutor" id="tutor" value="Tutores" onclick="filtrador(this.value)"> 
<INPUT TYPE="Button" name="profesor" id="profesor" value="Profesores" onclick="filtrador(this.value)"> 
<INPUT TYPE="Button" name="curso" id="curso" value="Cursos" onclick="filtrador(this.value)"> 
<INPUT TYPE="Button" name="materia" id="materia" value="Materias" onclick="filtrador(this.value)"> 

<INPUT TYPE="HIDDEN" id="stabla" value="">

<DIV id="mostrar">

</DIV>
</FORM>
</BODY>
</HTML>

