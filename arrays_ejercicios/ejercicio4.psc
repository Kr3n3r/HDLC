Proceso E4
	Definir vector1,i,e Como Entero;
	Dimension vector1[10];
	i<-0;
	e<-0;
	para i<-0 Hasta 9 Hacer
		mientras e=0 Hacer
			Escribir Sin Saltar 'Introduce el elemento número ',i,' del vector ';
			Leer vector1[i];
			si vector1[i]<0 Entonces
				e<-1;
			FinSi
		finmientras
	FinPara
	e<-0;
	para e<-0 hasta i Hacer
		Escribir Sin Saltar vector1[e];
	FinPara
FinProceso