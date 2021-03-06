<html>   
<head>
	<link href="../css/divisor3.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="../JavaScript/validaruser.js"> </script>

</head>
<HEADER>
			<h2> 
				<div align=center> 
					<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #000000"> &nbsp; <br> Registro <br> &nbsp;     </P> 
				</div>
			</h2>  
		</HEADER>
<body bgcolor=#c1c1c1>
	<DIV ALIGN=CENTER>
	<TABLE BORDER=0>
	<TR> <TD>
		
		<FORM ACTION="../BaseDeDatos/insertUsuario.php" method='get' name="register">
			<h3>Nombre de usuario <BR>
				<INPUT TYPE="TEXT" PLACEHOLDER="&#939499 Nombre de usuario" name="usuario" id="usuario" width=180> <BR>
			</h3>
			<h3>Contraseña <BR>
				<INPUT TYPE="PASSWORD"  PLACEHOLDER="&#939499 Contraseña" name="clave" id="clave" width=180> <BR>
				<INPUT TYPE="PASSWORD" PLACEHOLDER="&#939499 Confirme contraseña" name="verif" id="verif" width=180>
			</h3>
			<h3>Usted es: <BR>
				<SELECT name="tipo">
					<OPTION VALUE="ALU">ALUMNO</OPTION>
					<OPTION VALUE="DOC">DOCENTE</OPTION>
					<OPTION VALUE="TUT">TUTOR</OPTION>
				</SELECT>
			</h3>
			<h3>DNI <BR>
				<INPUT TYPE="TEXT"  PLACEHOLDER="DNI" name="dni" id="dni" width=180> <BR>
			</h3>
			<input type="button" value="Registrar" name='Cargar' onclick="validacion();">
			<A HREF="login.php"><input type="button" value="Atras" name='Atras'></A>
			
		</FORM>
		</TD>  
		<TD> 
		</TD> </TR> 
		</TABLE>
	</DIV>
	
	<!--	<P> 
			<IMG SRC="../images/escudo.png">
		</p>
	-->
	<div align=center> 
		<P style="COLOR: #FFFFFF; BACKGROUND-COLOR: #717070"> <b> &nbsp; <br> &copy; 2017 - E.E.S.T N°11 ISLAS MALVINAS <br> &nbsp;     </P>   
	</div>
</body> 
</html>  
