Proceso B2E10
	Definir x1,y1,x2,y2,r1,r2 Como Real;
	Definir distancia Como Real;
	
	Escribir "Introduce coordenada x primera circunferencia:";
	Leer x1;
	Escribir "Introduce coordenada y primera circunferencia:";
	Leer y1;
	Escribir "Introduce radio primera circunferencia:";
	Leer r1;
	Escribir "Introduce coordenada x segunda circunferencia:";
	Leer x2;
	Escribir "Introduce coordenada y segunda circunferencia:";
	Leer y2;
	Escribir "Introduce radio segunda circunferencia:";
	Leer r2;
	
	distancia <- raiz((x2-x1)^2 + (y2-y1)^2);	//Calcula la distancia entre dos puntos(\ab\=raiz(difx²+dify²))
	
	// circunferencias exteriores
	//La distancia entre los centros, d, es mayor que la suma de los radios.
	Si distancia> (r1 + r2) Entonces
		Escribir "Circunferencias exteriores";
	FinSi
	// circunferencias tangentes exteriores
	//La distancia entre los centros es igual a la suma de los radios.
	Si distancia = (r1 + r2) Entonces
		Escribir "Circunferencias tangentes exteriores";
	FinSi
	// circunferencias secantes // (5,5,20,10,10,20)
	//La distancia  es menor que la suma de los radios y mayor que su diferencia.
	Si distancia < (r1 + r2) Y distancia > abs(r1-r2) Entonces
		Escribir "Circunferencias secantes";
	FinSi
	// Circunferencias tangentes interiores
	//La distancia entre los centros es igual a la diferencia entre los radios.
	Si distancia = abs(r1-r2) Entonces
		Escribir "Circunferencias tangentes interiores";
	FinSi
	// Circunferencias interiores
	//La distancia entre los centros es mayor que cero y menor que la diferencia entre los radios. 
	Si distancia>0 Y distancia<abs(r1-r2) Entonces
		Escribir "Circunferencias interiores";
	FinSi
	// Circunferencias concétricas
	// La distancia = 0. Radios y centros coincidesn
	Si distancia=0 Entonces
		Escribir "Circunferencias concétricas";
	FinSi
	
FinProceso