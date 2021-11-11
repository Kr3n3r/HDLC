Proceso B4E7
	Definir str,str2 como cadena;
	definir char1,char2 Como Caracter;
	definir i Como Entero;
	Definir bol Como Logico;
	str2:="";
	
	Escribir Sin Saltar"Introduzca palabra o frase, sin símbolos ni números ";
	Leer str;
	
	bol<-Falso;
	
	Mientras no bol Hacer
		Escribir Sin Saltar'Introduzca la letra a sustituir ';
		Leer char1;
		Escribir Sin Saltar'Introduzca la letra sustitutiva ';
		Leer char2;
		
		si ((char1>="a" y char1<="z") o (char1>="A" y char1<="Z")) & ((char2>="a" y char2<="z") o (char2>="A" & char2<="Z")) Entonces
			bol<-Verdadero;
		FinSi
	FinMientras
	
	para i<-0 hasta Longitud(str) Hacer
		si Subcadena(str,i,i)=char1 Entonces
			str2<-Concatenar(str2,char2);
		SiNo
			str2<-Concatenar(str2,Subcadena(str,i,i));
		FinSi
	FinPara
	
	Escribir str2;
FinProceso
