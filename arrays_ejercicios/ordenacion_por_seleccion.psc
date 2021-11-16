Proceso Ordenacion_por_seleccion
	Definir i,j,vector,longitud_vector,aux Como Entero;
	Dimension vector[10];
	longitud_vector<-10;
	
	para i<-0 Hasta longitud_vector-1 Hacer
		vector[i]<-Aleatorio(1,10);
	FinPara
	
	para i<-0 Hasta longitud_vector-1 Hacer
		para j<-i+1 Hasta longitud_vector-1 Hacer
			si vector[j] < vector[i] Entonces
				aux<-vector[i];
				vector[i]<-vector[j];
				vector[j]<-aux;
			FinSi
		FinPara
	FinPara
	
	para i<-0 Hasta longitud_vector-1 Hacer
		Escribir vector[i];
	FinPara
FinProceso