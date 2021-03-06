function validacion(){
/* PARA ALUMNO */
var nombre = document.getElementById("nombre").value;
var apellido = document.getElementById("apellido").value;
var dni = document.getElementById("dni").value;
var fechanac = document.getElementById("fechanac").value;
var lugarnac = document.getElementById("lugarnac").value;
var nacionalidad = document.getElementById("nacionalidad").value;
var domicilio = document.getElementById("domicilio").value;
var codpost = document.getElementById("codpost").value;
var aux;
aux=0;

if(nombre == ""){
                aux=1;
				//alert("nombre");
                }

if(apellido == ""){
                   aux=1;
                  //alert("apellido");
				  }				 

if(dni == ""){
              aux=1;
			  //alert("dni");
             }

if(fechanac == ""){
                   aux=1;
				   //alert("fechanac");
                  }
				 

if(lugarnac == ""){
                   aux=1;
				   //alert("lugarnac");
                  }

if(nacionalidad == ""){
                      aux=1;
					  //alert("nacionaklidad");
                      }

if(domicilio == ""){
                    aux=1;
					//alert("domicilio");
                   }


if(codpost == ""){
                  aux=1;
				  //alert("codpost");
                 }
			 if(aux==0)
			 {
			document.formdocente.submit();
			 
			 }
			 else
			 {
				 alert("Hay campos vacíos en el formulario de alumno.");
			 }
}
