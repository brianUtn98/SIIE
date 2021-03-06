<?php 
	header('Content-Type:text/html;charset=ISO-8859-1');
?>
<!doctype html>
<html>   
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1"/>
	<link href="../css/divisor3.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="../JavaScript/validaruser.js"> </script>
	
</head>
<HEADER>
			<h2> 
				<div align=center> 
					<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #000000"> &nbsp; <br> Iniciar Sesion <br> &nbsp;     </P> 
				</div>
			</h2>  
		</HEADER>
<body bgcolor=#c1c1c1>
	<DIV ALIGN=CENTER>
	<TABLE BORDER=0>
	<TR> <TD>
		
		<FORM ACTION="createSesion.php" method='get' name="register">
			<h3>Nombre de usuario <BR>
				<INPUT TYPE="TEXT" PLACEHOLDER="&#939499 Nombre de usuario" name="usuario" id="usuario" width=180> <BR>
			</h3>
			<h3>Contraseña <BR>
				<INPUT TYPE="PASSWORD"  PLACEHOLDER="&#939499 Contraseña" name="clave" id="clave" width=180> <BR>
			</h3>
			<input type="Submit" value="Iniciar Sesion" name='Cargar' onclick="">
			<a href="register.php">Registrate</a>
		</FORM>
		</TD>  
		 </TR> 
		</TABLE>
	</DIV>
	
	<!--	<P> 
			<IMG SRC="../images/escudo.png">
		</p>
	-->
	<?php
		if(isset($_REQUEST["error"])){
			echo utf8_decode($_REQUEST["error"]);
		}
	
	?>
	
	<div align=center> 
		<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #717070"> <b> &nbsp; <br> &copy; 2017 - E.E.S.T N°11 ISLAS MALVINAS <br> &nbsp;     </P>   
	</div>
</body> 
</html>  
