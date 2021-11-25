funcion main
	definir i,ndias Como Entero;
	definir tmax, tmin Como real;
	
	Escribir Sin Saltar "Introduce el número de días que quieres introducir:";
	leer ndias;
	para i<-1 Hasta ndias Hacer
		Escribir sin saltar "Introduce la temperatura máxima del día ", i;
		leer tmax;
		Escribir sin saltar "Introduce la temperatura máxima del día ", i;
		leer tmin;
		temperatura_media(tmax, tmin);
	FinPara
FinFuncion

funcion temperatura_media(tmax, tmin)
	definir tm Como real;
	
	si tmax >= tmin Entonces
		tm<-(tmax+tmin)/2;
		Escribir "La temperatura media es ", tm;
	sino
		Escribir "Has introducido las temperaturas mal";
	FinSi
FinFuncion

Proceso ejercicio3
	main;
FinProceso
