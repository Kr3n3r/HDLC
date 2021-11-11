Proceso E3
	Definir i,v,suma,media,max,min Como Entero;
	Dimension v[5];
	suma<-0;
	media<-0;
	max<-0;
	min<-11;
	
	para i<-0 Hasta 4 Hacer
		Escribir 'Introduce la nota número ',i+1;
		Leer v[i];
		suma<-suma+v[i];
		media<-media+v[i];
		si v[i] >= max Entonces
			max<-v[i];
		FinSi
		si v[i] <= min Entonces
			min<-v[i];
		FinSi
	FinPara
	Escribir 'La suma es ', suma;
	Escribir 'La media es ', media/5;
	Escribir 'El max es ', max;
	Escribir 'El min es ', min;
FinProceso