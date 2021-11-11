Proceso B3E5
	Definir car Como Caracter;
	Definir i Como Entero;
	i<-0;
	car<-'a';
	Escribir 'Introduce caracteres';
	Mientras car<>" " hacer
		leer car;
		si car='a' o car='e' o car='i' o car='o' o car='u' Entonces
			Escribir 'VOCAL';
		SiNo
			Escribir 'NO VOCAL';
		FinSi
		//		segun car Hacer
		//			a: Escribir 'VOCAL';
		//		FinSegun
	FinMientras
FinProceso