Proceso Ordenacion_por_insercion
	Definir i,j,aux,vector como entero;
	Dimension vector[10];
	
	Para i<-0 Hasta 9 Hacer
		vector[i]<-Aleatorio(1,10);
	FinPara
	
	para i<-0 Hasta 9 Hacer
		aux<-vector[i];
		j<-i-1;
		mientras j>=0 y vector[j] > aux Hacer
			vector[j+1]<-vector[j];
			j<-j-1;
		FinMientras
		vector[j+1]<-aux;
	FinPara
	
	para i<-0 Hasta 9 Hacer
		Escribir vector[i];
	FinPara
FinProceso