// Nota final=(0.9/0.8)*media practicas + (0.1/0.2)*nota test
Proceso Programa
	Definir apartado, nota Como Real;
	Definir porcentaje como Entero;
	
	apartado <- (12/10)/2; // valor de cada apartado del test
	
	Escribir 'Escribe el porcentaje que tendrá el test';
	Leer porcentaje;
	
	nota <- (porcentaje/100)*apartado; // valor del apartado en nota final
	
	Si porcentaje = 10 o porcentaje = 20 Entonces
		Escribir 'La nota que supondrá esa reclamación será: ', nota;
		Si nota >= 0.1 Entonces //0.1 marca la diferencia entre aproximaciones normalmente
			Escribir 'Merece reclamar la nota';
		SiNo
			Escribir 'No merece reclamar la nota';
		FinSi
	SiNo
		Escribir 'El porcentaje solo puede ser o 10 o 20';
	FinSi
	
FinProceso