Proceso B3E3
	Definir a,i,sum como entero;
	a<-1;
	sum<-0;
	i<-0;
	Escribir 'Introduce números:';
	repetir 
		leer a;
		si a<>0 Entonces			
			sum<-sum+a;
			i<-i+1;
		finsi
	Hasta Que a=0
	Escribir 'La suma es ', sum;
	Escribir i;
	Escribir 'La media es ',sum/i;
FinProceso