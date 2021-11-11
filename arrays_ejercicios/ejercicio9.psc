Proceso E9
	Definir temperaturas_maximas, temperaturas_minimas, max_temperatura, med_temperatura Como Real;
	Definir i,j,cambio Como Entero;
	Dimension temperaturas_maximas[5], temperaturas_minimas(5);
	
	temperaturas_maximas(0)<-20.5;
	temperaturas_minimas(0)<-13.47;
	temperaturas_maximas(1)<-18.5;
	temperaturas_minimas(1)<-7.92;
	temperaturas_maximas(2)<-21.01;
	temperaturas_minimas(2)<-15.67;
	temperaturas_maximas(3)<-15.89;
	temperaturas_minimas(3)<-13.67;
	temperaturas_maximas(4)<-21.111;
	temperaturas_minimas(4)<-13.47;
	
	
	para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir "La temperatura media del día ", i+1," es de ", (temperaturas_maximas[i]+temperaturas_minimas[i])/2;
	FinPara
	
	Repetir
		j<-0;
		para i<-0 hasta 4 Hacer
			si temperaturas_minimas[i]>temperaturas_minimas[i+1] Entonces
				cambio<-temperaturas_minimas[i];
				temperaturas_minimas[i]<-temperaturas_minimas[i+1];
				temperaturas_minimas[i+1]<-temperaturas_minimas[i];
				j<-j+1;
			FinSi
		FinPara
	Hasta Que j=0
	
FinProceso