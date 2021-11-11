Proceso B3E1
	Definir a,f,i Como Entero;
	Escribir 'Introduce un número para calcular su factorial:';
	Leer a;
	f<-1;
	si a>=1 Entonces
		para i<-1 Hasta a Hacer			
			f<-f*i;
		FinPara
		Escribir 'El factorial es ', f;
	FinSi
FinProceso