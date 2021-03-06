function validacion(){
var usuario = document.getElementById("usuario").value;
var clave = document.getElementById("clave").value;
var verif= document.getElementById("verif").value;
var aux;
aux=0;

if(usuario == ""){
                aux=1;
			
                }

if(clave == ""){
                   aux=1;
            
				  }				 

if(verif == ""){
              aux=1;
			
             }


			 if(aux==0)
			 {
				 	if(clave==verif)
					{
			document.register.submit();
					}	
					else
					{
					alert("La contraseña no coincide.");
					}
			 
			 }
			 else
			 {
			
				 alert("Hay campos vacíos en el formulario.");
			 }
}