Proceso E5
	Definir vector1,i,j,cambio Como Entero;
	Dimension vector1[10];
	
	para i<-0 Hasta 9 Hacer
		vector1[i]<-Aleatorio(-100,100);
	FinPara
	
	Repetir
		j:=0;
		para i<-0 Hasta 8 Hacer
			si vector1[i]>vector1[i+1] Entonces
				cambio<-vector1[i];
				vector1[i]<-vector1[i+1];
				vector1[i+1]<-cambio;
				j<-j+1;
			FinSi
		FinPara
	Hasta Que j=0
	
	para i<-0 Hasta 9 Hacer
		Escribir vector1[i];
	FinPara
FinProceso