Proceso E7
	Definir vector1,vector2,vector3,i Como Entero;
	Dimension vector1[5],vector2[5],vector3[5];
	
	Escribir "Introduce valores para vector1";
	para i<-0 Hasta 4 Hacer
		leer vector1[i];
	FinPara
	
	Escribir "Introduce valores para vector2";
	para i<-0 Hasta 4 Hacer
		leer vector2[i];
	FinPara
	
	para i<-0 Hasta 4 Hacer
		vector3[i]<-vector1[i]+vector2[i];
	FinPara
	Escribir Sin Saltar "[";
	para i<-0 hasta 3 Hacer
		Escribir Sin Saltar vector3[i],", ";
	FinPara
	Escribir Sin Saltar vector3[4],"]";
	escribir "";
FinProceso