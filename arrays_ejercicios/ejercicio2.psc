Proceso E2
	Definir i, j, v, u Como Entero;
	Dimension v[5], u[5];
	
	para i<-0 Hasta 4 Hacer
		Escribir Sin Saltar "Introduce un elemento del array ";
		Leer v[i];
	FinPara
	j<-0;
	para i<-4 Hasta 0 con paso -1 Hacer
		u[j]<-v[i];
		j<-j+1;
	FinPara
	para i<-0 Hasta 4 Hacer
		Escribir Sin Saltar u[i];
	FinPara
	Escribir "";
FinProceso