Proceso B4E4
	Definir char, str Como Caracter;
	Definir i, count Como Entero;
	count:=0;
	
	Escribir Sin Saltar "Introduce la frase ";
	Leer str;
	
	para i<-0 Hasta Longitud(str)-1 Hacer
		si Subcadena(str,i,i) = " " Entonces
			count:=count+1;
		FinSi
	FinPara
	
	Escribir "El número de palabras son ", count+1;
FinProceso