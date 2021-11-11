Proceso B3E8
	Definir min,max,n,i,suma,fuera,limite Como Entero;
	suma<-0;
	fuera<-0;
	limite<-0;
	
	Escribir sin saltar 'Introduce el límite inferior ';
	Leer min;
	Repetir
		Escribir sin saltar 'Introduce el límite superior';
		Leer max;	
	Hasta Que max>min
	Escribir 'Introduce valores: ';
	Repetir
		Leer n;
		si min<n y n<max Entonces
			suma<-suma+n;
		SiNo
			si n=min o n=max Entonces
				limite<-limite+1;
			sino
				fuera<-fuera+1;
			FinSi
		FinSi
	Hasta Que n=0
	Escribir 'La suma es ', suma;
	Escribir 'El número de números fuera del intervalo fueron ', fuera;
	Escribir 'El número de números que coincidían con los límites fueron ', limite;
FinProceso