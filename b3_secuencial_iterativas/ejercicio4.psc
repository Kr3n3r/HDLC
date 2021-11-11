Proceso B3E4
	Definir i,j,num,pos,neg,cer Como Entero;
	i<-0;
	j<-0;
	pos<-0;
	neg<-0;
	cer<-0;
	
	Escribir '¿Cuántos números vas a introducir?';
	leer j;
	para i<-1 Hasta j Hacer
		Escribir 'Introduce el número:';
		leer num;
		si num>=0 Entonces
			si num=0 Entonces
				cer<-cer+1;
			SiNo
				pos<-pos+1;
			FinSi
		SiNo
			neg<-neg+1;
		FinSi
	FinPara
	Escribir 'El numero de positivos es ', pos;
	Escribir 'El numero de negativos es ', neg;
	Escribir 'El numero de ceros es ', cer;
FinProceso