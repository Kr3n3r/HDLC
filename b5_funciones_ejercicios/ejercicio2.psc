funcion EsMultiplo (n1,n2)
	si (n1%n2=0 o n2%n1=0) Entonces
		Escribir n2," es múltiplo de ", n1;
	FinSi
FinFuncion

Proceso ejercicio2
	definir n1, n2 Como Entero;
	
	Escribir Sin Saltar "Introduce el primer número: ";
	leer n1;
	Escribir Sin Saltar "Introduce el segundo número: ";
	leer n2;
	
	EsMultiplo(n1,n2);
FinProceso
