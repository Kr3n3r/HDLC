// se resuelve de forma recursiva
Proceso ejercicio9
	definir num1, num2, mcd Como Entero;
	
	Escribir sin saltar "Introduce el primer número-";
	leer num1;
	Escribir sin saltar "Introduce el segundo número-";
	leer num2;
	
	mcd<-calcularMCD(num1,num2);
	Escribir "El MCD es ", mcd;
FinProceso

funcion resultado <- calcularMCD(n1,n2)
	definir resultado,resto Como Entero;
	resto<-n2%n1;
	
	Repetir
		si resto = 0 Entonces
			resultado <- n1;
		sino
			n1<-calcularMCD(n1,resto);
		FinSi
	Hasta Que resultado <> 0 
FinFuncion
//error ejecución interrumpida