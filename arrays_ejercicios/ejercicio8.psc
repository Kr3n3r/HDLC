Proceso E8
	Definir vnombre,tmp Como Caracter;
	Definir i,j,vedad,edad_max,exit Como Entero;
	Dimension vnombre[10], vedad[10];
	exit:=0;
	tmp<-"";
	i<-0;
	
	Mientras exit=0 Hacer
		Escribir "Introduce el nombre del alumno";
		Leer tmp;
		si tmp = "*" Entonces
			exit:=1;
		SiNo
			vnombre[i]<-tmp;
			Escribir "Introduce la edad del alumno";
			Leer vedad[i];
		FinSi
		si i=9 Entonces
			exit:=1;
		FinSi
		si exit=0 Entonces
			i<-i+1;
		FinSi
	FinMientras
	
	Escribir "";
	Escribir "/· Alumnos mayores de edad ·/";
	Escribir "";
	
	para j<-0 Hasta i-1 Hacer
		si vedad[j] >= 18 Entonces
			Escribir "Nombre del alumno: ", vnombre[j];
			Escribir "Edad del alumno: ", vedad[j];
		FinSi
	FinPara
	
	Escribir "";
	Escribir "/· Alumnos más mayores ·/";
	Escribir "";
	
	edad_max<-vedad[0];
	para j<-0 Hasta i-1 Hacer
		Si vnombre[j]<>"*" Entonces
			Si vedad[j]>edad_max Entonces
				edad_max<-vedad[j];
			FinSi
		FinSi
	FinPara
	
	para j<-0 Hasta i-1 Hacer
		Si vnombre[j]<>"*" Entonces
			Si vedad[j]=edad_max Entonces
				Escribir "Nombre: ",vnombre[j],". Edad: ",vedad[j];
			FinSi
		FinSi
	FinPara
FinProceso