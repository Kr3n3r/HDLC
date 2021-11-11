Proceso B2E3
	Definir str, char como caracter;
	Definir i, count Como Entero;
	count<-0;
	
	Escribir sin saltar "Introduce una cadena ";
	Leer str;
	Escribir Sin Saltar "Introduce el carácter ";
	Leer char;
	
	para i<-0 Hasta Longitud(str)-1 Hacer
		si Subcadena(str,i,i) = char Entonces
			count:=count+1;
		FinSi
	FinPara
	
	Escribir 'El número de veces que aparece el carácter es ', count;
FinProceso