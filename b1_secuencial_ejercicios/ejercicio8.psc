Proceso B1E8
	Definir calificacion, parcial, examen, trabajo como Real;
	
	calificacion<-0;
	Escribir 'Introduce la calificación del primer parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	Escribir 'Introduce la calificación del segundo parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	Escribir 'Introduce la calificación del tercer parcial:';
	Leer parcial;
	calificacion<-calificacion+parcial;
	
	Escribir 'Introduce la calificación del examen final';
	Leer examen;
	
	Escribir 'Introduce la calificación del trabajo final';
	Leer trabajo;
	
	Escribir 'La calificación final de Algoritmos será ', 0.55*(calificacion/3)+0.3*examen+0.15*trabajo;
FinProceso