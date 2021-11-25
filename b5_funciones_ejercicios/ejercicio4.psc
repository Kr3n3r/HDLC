//funcion ConvertirEspaciado(text)
//	definir auxstring Como Caracter;
//	definir i Como Entero;
//	auxstring<-"";
//	
//	para i<-0 Hasta Longitud(text) Hacer
//		si Subcadena(text, i, i) = " " Entonces
//			auxstring<-Concatenar(auxstring, Subcadena(text, i, i));
//		sino
//			auxstring<-Concatenar(auxstring, Subcadena(text, i, i));
//			auxstring<-Concatenar(auxstring, " ");
//		FinSi
//		
//	FinPara
//	
//	Escribir auxstring;
//FinFuncion
//
//Proceso ejercicio4
//	ConvertirEspaciado("Hola, tú");
//FinProceso

//otro modo
// No terminado. Idea es concatenar ese elemento con un espacio y añadirle el siguiente espacio hasta final.
// Si encuentra un espacio, no concatenar con espacio, solo concatenar lo anterior con lo siguiente.
funcion ConvertirEspaciado(text)
	definir i Como Entero;
	
	para i<-0 Hasta Longitud(text) Hacer
		text<-Concatenar(Concatenar(Subcadena(text, i,i)," "),text);		
	FinPara
	
	Escribir text;
FinFuncion

Proceso ejercicio4
	ConvertirEspaciado("Hola,tú");
FinProceso
