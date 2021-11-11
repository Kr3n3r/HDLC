Proceso E10
	Definir matriz,x,z,suma Como Entero;
	Dimension matriz[5,5];
	suma<-0;
	
	para x<-0 Hasta 4 Hacer
		para z<-0 Hasta 4 Hacer
			matriz[x,z]<-azar(101);
			Escribir Sin Saltar matriz[x,z]," "; 
		FinPara
		Escribir "";
	FinPara
	
	para x<-0 Hasta 4 Hacer
		para z<-0 Hasta 4 Hacer
			suma<-suma+matriz[x,z];
		FinPara
		Escribir "La suma de la fila ", x+1, " es ", suma;
	FinPara
	
	suma<-0;
	
	para z<-0 Hasta 4 Hacer
		para x<-0 Hasta 4 Hacer
			suma<-suma+matriz[x,z];
		FinPara
		Escribir "La suma de la columna ", z+1, " es ", suma;
	FinPara
	
FinProceso