Proceso ejercicio12
	Definir marco,i,j Como Entero;
	Dimension marco[5,15];
	para i<-0 Hasta 14 Hacer
		para j<-0 Hasta 4 Hacer
			si (i=0 o i=14) o (j=0 o j=4) Entonces
				marco[j,i]<-1;
			SiNo
				marco[j,i]<-0;
			FinSi
		FinPara
	FinPara
	para i<-0 Hasta 15 Hacer
		para j<-0 Hasta 4 Hacer
			Escribir marco[j,i];
		FinPara
	FinPara
FinProceso
//Incompleto