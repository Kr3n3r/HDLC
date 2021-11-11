Proceso E11
	Definir identidad,fila,columna,i,j Como Entero;
	Dimension identidad[5,5];
	i<-0;
	j<-0;
	
	para columna<-0 Hasta 4 Hacer
		para fila<-0 Hasta 4 Hacer
			identidad[columna,fila]<-0;
		FinPara
	FinPara
	para columna<-0 Hasta 4 Hacer
		para fila<-0 Hasta 4 Hacer
			identidad[i,j]<-1;
		FinPara
		i<-i+1;
		j<-j+1;
	FinPara
	para columna<-0 Hasta 4 Hacer
		para fila<-0 Hasta 4 Hacer
			Escribir Sin Saltar identidad[columna,fila]," ";
		FinPara
		Escribir "";
	FinPara
FinProceso