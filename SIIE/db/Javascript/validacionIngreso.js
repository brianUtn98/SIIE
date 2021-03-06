function validacion_letras(){

	var t = window.event.keyCode;
	if((t>=65 && t<=90)|| (t>=97 && t<=122)|| (t>=129 && t<=163)|| t==32 || t==164 || t==8 || t==127 || t==13 || t==165 || t==160 || t==130 || t==161 || t==172 || t==163 || t==181 || t==144 || t==214 || t==224 || t==233){
		//El caracter correcto
		return true;
	}
	else{
		alert("Deben ingresarse letras en este campo.");
		return false;//bloquear ingreso de la tecla erronea
	}
}

function validacion_signos(){

	var t = window.event.keyCode;
	if( t==44 || t==46 || t==59 || t==58 ){
		//El caracter correcto
		return true;
	}
	else{
		alert("Deben ingresarse letras en este campo.");
		return false;//bloquear ingreso de la tecla erronea
	}
}

function validacion_numeros(tel){

	var  t = window.event.keyCode;
	if((t>=48 && t<=57)|| t==8 || t==127 || t==13 ){
		//El caracter es num?rico
		return true
	}
	else{
		if (tel==null)
			alert("Deben ingresarse numeros en este campo.");
		return false;
		//bloquear ingreso de la tecla erronea
	}
}

function validacion_telefono(){
	
	var  t = window.event.keyCode;
	if( validacion_numeros("si") || t>=40 && t<=41 || t==43 || t<=45 || t==8 || t==127 || t==13 ){
		//El caracter es num?rico
		return true
	}
	else{
		alert("Deben ingresarse carecteres validos (,),+ y - en este campo.");
		return false;
		//bloquear ingreso de la tecla erronea
	}
}