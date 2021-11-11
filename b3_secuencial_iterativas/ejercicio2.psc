Proceso B3E2
	Definir random,intentos,num Como Entero;
	random<-azar(100)+1;
	intentos<-10;
	num<-0;
	Mientras num<>random y intentos<>0 Hacer
		Escribir 'Introduce un número [1,100]: ';
		leer num;
		si num>=random Entonces
			si num=random Entonces
				Escribir 'Has adivinado el número';
			sino
				Escribir 'El número es menor que el introducido';
			FinSi
		SiNo
			Escribir 'El número es mayor que el introducido';
		FinSi
		intentos<-intentos-1;
	FinMientras
	si num=random Entonces
		Escribir 'El número de intentos son ', 10-intentos;
	sino 
		Escribir 'El número generado era ', random;
	FinSi
	
FinProceso