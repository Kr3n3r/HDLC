Funcion EscribirCentrado(text)
	definir i,ltext Como Entero;
	ltext<-Longitud(text);
	
	// Escribe el texto centrado y salta la l�nea
	espacios(ltext);
	Escribir Sin Saltar text;
	Escribir "";
	
	//Escribe los "=" y salta a la siguiente l�nea
	espacios(ltext);
	para i<-1 hasta ltext Hacer
		Escribir Sin Saltar "=";
	FinPara
	Escribir "";
FinFuncion

funcion espacios(lenght)
	definir i Como Entero;
	para i<-1 hasta (40-lenght/2) Hacer
		Escribir sin saltar " ";
	FinPara
FinFuncion

Proceso ejercicio1
	EscribirCentrado("Hola mi nombre es Alejandro M�rmol Romero");
	EscribirCentrado("Esto es un texto de prueba");
FinProceso
