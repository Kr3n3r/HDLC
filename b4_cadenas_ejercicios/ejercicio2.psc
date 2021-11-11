Proceso B4E2
	Definir str,fstr Como Caracter;
	definir length Como Entero;
	
	Escribir Sin Saltar 'Introduce la cadena';
	Leer str;
	Escribir Sin Saltar 'Introduce la cadena para ver si la primera cadena empieza por esa subcadena';
	Leer fstr;
	
	si subcadena(str,0,Longitud(fstr)-1)=fstr Entonces
		Escribir "La primera cadena empieza por ', fstr;
	SiNo
		Escribir "La primera cadena no empieza por ', fstr;
	FinSi
	
FinProceso