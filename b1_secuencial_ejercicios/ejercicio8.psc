Proceso B1E8
	Definir calificacion, parcial, examen, trabajo como Real;
	
	calificacion<-0;
	Escribir 'Introduce la calificaci�n del primer parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	Escribir 'Introduce la calificaci�n del segundo parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	Escribir 'Introduce la calificaci�n del tercer parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	
	Escribir 'Introduce la calificaci�n del examen final';
	Leer examen;
	
	Escribir 'Introduce la calificaci�n del trabajo final';
	Leer trabajo;
	
	Escribir 'La calificaci�n final de Algoritmos ser� ', 0.55*(calificacion/3)+0.3*examen+0.15*trabajo;
FinProceso