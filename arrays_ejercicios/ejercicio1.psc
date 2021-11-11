Proceso E1
	Definir i,vector_numero Como Entero;
	Dimension vector_numero(10);
	
	para i<-0 Hasta 9 Hacer
		vector_numero[i]<-Aleatorio(1,10);
	FinPara
	
	para i<-0 Hasta 9 Hacer
		Escribir 'El cuadrado del número ', vector_numero[i], ' es ', vector_numero[i]^2;
		Escribir 'El cubo del número ', vector_numero[i], ' es ', vector_numero[i]^3;
	FinPara
FinProceso