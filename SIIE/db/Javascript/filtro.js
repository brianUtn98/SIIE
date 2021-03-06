function filtrador(tabla){
	var mostrar=document.getElementById('mostrar');
	var stabla=document.getElementById('stabla');
	var a="";
switch(tabla){
			case 'Alumnos':
			a="";
			a+="<h2> Filtrado por... </h2> <Select name='filtro' id='filtro'>";
			a+="<BR>"
			a+="<Option value='Numero_de_documento'> DNI </option>";
			a+="<Option value='Nombre'> Nombre </option>";
			a+="<Option value='Apellido'> Apellido </option>";
			a+="<Option value='Codigo_postal'> Codigo postal </option>";
			a+="<Option value='Telefono'> Telefono </option>";
			a+="<Option value='Nacionalidad'> Nacionalidad </option>";
			a+="</Select>";
			a+="<INPUT TYPE='text' name='dato' id='dato' onkeyup='mostrartabla()'><p>";
			a+="<DIV id='tabla'> </DIV>"
			stabla.value="alumno";
			mostrar.innerHTML=a;
			
			break;
			case 'Tutores':
				a="";
			a+="<h2> Filtrado por... </h2> <Select name='filtro' id='filtro'>";
			a+="<Option value='Numero_de_documento'> DNI </option>";
			a+="<Option value='Nombre'> Nombre </option>";
			a+="<Option value='Apellido'> Apellido </option>";
			a+="<Option value='Codigo_postal'> Codigo postal </option>";
			a+="<Option value='Telefono'> Telefono </option>";
			a+="<Option value='Nacionalidad'> Nacionalidad </option>";
			a+="</Select>";
			a+="<INPUT TYPE='text' name='dato' id='dato' onkeyup='mostrartabla()'><p>";
			a+="<DIV id='tabla'> </DIV>"
			stabla.value="tutor";
			mostrar.innerHTML=a;
			break;
			case 'profesores':
			a="";
			a+="<h2> Filtrado por... </h2> <Select name='filtro' id='filtro'>";
			a+="<Option value='Numero_de_documento'> DNI </option>";
			a+="<Option value='Nombre'> Nombre </option>";
			a+="<Option value='Apellido'> Apellido </option>";
			a+="<Option value='Codigo_postal'> Codigo postal </option>";
			a+="<Option value='Telefono'> Telefono </option>";
			a+="<Option value='Nacionalidad'> Nacionalidad </option>";
			a+="</Select>";
			a+="<INPUT TYPE='text' name='dato' id='dato' onkeyup='mostrartabla()'><p>";
			a+="<DIV id='tabla'> </DIV>"
			stabla.value="profesor";
			mostrar.innerHTML=a;
			break;
			case 'Cursos':
				a="";
			a+="<h2> Filtrado por... </h2> <Select name='filtro' id='filtro'>";
			a+="<Option value='Anio'> Año </option>";
			a+="<Option value='Division'> División </option>";
			a+="<Option value='Especialidad'> Especialidad </option>";
			a+="</Select>";
			a+="<INPUT TYPE='text' name='dato' id='dato' onkeyup='mostrartabla()'><p>";
			a+="<DIV id='tabla'> </DIV>"
			mostrar.innerHTML=a;
			break;
			case 'Materias':
				a="";
			a+="<h2> Filtrado por... </h2> <Select name='filtro' id='filtro'>";
			a+="<Option value='Nombre'> Nombre </option>";
			a+="<Option value='Anio'> Año </option>";
			a+="<Option value='Ciclo_lectivo'> Ciclo lectivo </option>";
			a+="</Select>";
			a+="<INPUT TYPE='text' name='dato' id='dato' onkeyup='mostrartabla()'><p>";
			a+="<DIV id='tabla'> </DIV>"
			mostrar.innerHTML=a;
			break;
				}
}

function mostrartabla(){
var tabla = document.getElementById("tabla");
var filtro=document.getElementById("filtro").value;
var dato=document.getElementById("dato").value;
var stabla=document.getElementById("stabla").value;
	ajax=nuevoAjax();
	
	ajax.open("GET", "datosAjax/buscador.php?filtro="+filtro+"&dato="+dato+"&stabla="+stabla, true);
	ajax.onreadystatechange=function() { 
	
		if (ajax.readyState==1){
			tabla.innerHTML="Cargando...";	
		}
	
		if (ajax.readyState==4){ 
		
			if(ajax.responseText!=""){
				tabla.innerHTML= ajax.responseText;
			}
		//si lo esta informa que no se encontro 
			else{
				tabla.innerHTML= "";
			}
		} 
	}
	ajax.send(null);
}
function nuevoAjax(){ 
	/* Crea el objeto AJAX. Esta funcion es generica para cualquier utilidad de este tipo, por
	lo que se puede copiar tal como esta aqui */
	var xmlhttp=false; 
	try 
	{ 
		// Creacion del objeto AJAX para navegadores no IE
		xmlhttp=new ActiveXObject("Msxml2.XMLHTTP"); 
	}
	catch(e)
	{ 
		try
		{ 
			// Creacion del objet AJAX para IE 
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
		} 
		catch(E) { xmlhttp=false; }
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') { xmlhttp=new XMLHttpRequest(); } 

	return xmlhttp; 
}