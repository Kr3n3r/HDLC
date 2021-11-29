funcion calcularMaxMin(array)
	Definir i, j Como Entero;
	
	para i<-0 Hasta 9 Hacer
		para j<-i+1 Hasta 9 Hacer
			si array[j] < array[i] Entonces
				intercambiar(array[i], array[j]);
			FinSi
		FinPara
	FinPara
	
	Escribir "El valor mínimo es ", array[0];
	Escribir "El valor máximo es ", array[9];
FinFuncion

Funcion intercambiar(elemento1,elemento2) //WHY?
	definir aux Como Entero;
	
	aux<-elemento1;
	elemento1<-elemento2;
	elemento2<-aux;
FinFuncion


Proceso ejercicio5
	definir array,i Como Entero;
	dimension array[10];
	
	para i<-0 Hasta 9 Hacer
		Escribir sin saltar "Introduce el elemento número ", i+1," del array:";
		leer array[i];
	FinPara
	
	calcularMaxMin(array);
FinProceso
