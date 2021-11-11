Proceso B2E20
	Definir peso,precio1,precio2,precio3,precio4,precio5,zona como Real;
	precio1<-24.00;
	precio2<-20.00;
	precio3<-21.00;
	precio4<-10.00;
	precio5<-18.00;	
	
	Escribir sin saltar"Introduce el peso del paquete ";
	Leer peso;
	Si peso>5 Entonces
		Escribir "Los paquetes de más de 5kg no se repartirán";
	sino
		Escribir "Zonas: 1-América del Norte, 2-América Central, 3-América del Sur, 4-Europa, 5-Asia";
		Escribir sin saltar "Introduce la zona donde va dirigido el paquete [1-7] ";
		Leer zona;
		si zona>=1 y zona<=5 Entonces
			si zona=1 Entonces
				Escribir "El costo del paquete es ", precio1*peso;
			sino
				si zona=2 Entonces
					Escribir "El costo del paquete es ", precio2*peso;
				SiNo
					si zona=3 Entonces
						Escribir "El costo del paquete es ", precio3*peso;
					SiNo
						si zona=4 Entonces
							Escribir "El costo del paquete es ", precio4*peso;
						SiNo
							si zona=5 Entonces
								Escribir "El costo del paquete es ", precio5*peso;
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		sino
			Escribir "Has introducido una zona desconocida";
		FinSi
	FinSi
FinProceso