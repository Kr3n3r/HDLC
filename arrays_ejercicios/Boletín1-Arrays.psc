//Proceso E1
//	Definir i,vector_numero Como Entero;
//	Dimension vector_numero(10);
//	
//	para i<-0 Hasta 9 Hacer
//		vector_numero[i]<-Aleatorio(1,10);
//	FinPara
//	
//	para i<-0 Hasta 9 Hacer
//		Escribir 'El cuadrado del número ', vector_numero[i], ' es ', vector_numero[i]^2;
//		Escribir 'El cubo del número ', vector_numero[i], ' es ', vector_numero[i]^3;
//	FinPara
//FinProceso

//Proceso E2
//	Definir i, j, v, u Como Entero;
//	Dimension v[5], u[5];
//	
//	para i<-0 Hasta 4 Hacer
//		Escribir Sin Saltar "Introduce un elemento del array ";
//		Leer v[i];
//	FinPara
//	j<-0;
//	para i<-4 Hasta 0 con paso -1 Hacer
//		u[j]<-v[i];
//		j<-j+1;
//	FinPara
//	para i<-0 Hasta 4 Hacer
//		Escribir Sin Saltar u[i];
//	FinPara
//	Escribir "";
//FinProceso

//Proceso E3
//	Definir i,v,suma,media,max,min Como Entero;
//	Dimension v[5];
//	suma<-0;
//	media<-0;
//	max<-0;
//	min<-11;
//	
//	para i<-0 Hasta 4 Hacer
//		Escribir 'Introduce la nota número ',i+1;
//		Leer v[i];
//		suma<-suma+v[i];
//		media<-media+v[i];
//		si v[i] >= max Entonces
//			max<-v[i];
//		FinSi
//		si v[i] <= min Entonces
//			min<-v[i];
//		FinSi
//	FinPara
//	Escribir 'La suma es ', suma;
//	Escribir 'La media es ', media/5;
//	Escribir 'El max es ', max;
//	Escribir 'El min es ', min;
//FinProceso

//Proceso E4
//	Definir vector1,i,e Como Entero;
//	Dimension vector1[10];
//	i<-0;
//	e<-0;
//	para i<-0 Hasta 9 Hacer
//		mientras e=0 Hacer
//			Escribir Sin Saltar 'Introduce el elemento número ',i,' del vector ';
//			Leer vector1[i];
//			si vector1[i]<0 Entonces
//				e<-1;
//			FinSi
//		finmientras
//	FinPara
//	e<-0;
//	para e<-0 hasta i Hacer
//		Escribir Sin Saltar vector1[e];
//	FinPara
//FinProceso

//Proceso E5
//	Definir vector1,i,j,cambio Como Entero;
//	Dimension vector1[10];
//	
//	para i<-0 Hasta 9 Hacer
//		vector1[i]<-Aleatorio(-100,100);
//	FinPara
//	
//	Repetir
//		j:=0;
//		para i<-0 Hasta 8 Hacer
//		si vector1[i]>vector1[i+1] Entonces
//			cambio<-vector1[i];
//			vector1[i]<-vector1[i+1];
//			vector1[i+1]<-cambio;
//			j<-j+1;
//		FinSi
//		FinPara
//	Hasta Que j=0
//
//	para i<-0 Hasta 9 Hacer
//		Escribir vector1[i];
//	FinPara
//FinProceso

//Proceso E6
//	Definir dias Como Entero;
//	Dimension dias[12];
//	Definir nombre_mes Como Caracter;
//	Dimension nombre_mes[12];
//	Definir mes como Entero;
//	dias[0]<-31;
//	dias[1]<-28;
//	dias[2]<-31;
//	dias[3]<-30;
//	dias[4]<-31;
//	dias[5]<-30;
//	dias[6]<-31;
//	dias[7]<-31;
//	dias[8]<-30;
//	dias[9]<-31;
//	dias[10]<-30;
//	dias[11]<-31;
//	nombre_mes[0]<-"Enero";
//	nombre_mes[1]<-"Febrero";
//	nombre_mes[2]<-"Marzo";
//	nombre_mes[3]<-"Abril";
//	nombre_mes[4]<-"Mayo";
//	nombre_mes[5]<-"Junio";
//	nombre_mes[6]<-"Julio";
//	nombre_mes[7]<-"Agosto";
//	nombre_mes[8]<-"Septiembre";
//	nombre_mes[9]<-"Octubre";
//	nombre_mes[10]<-"Noviembre";
//	nombre_mes[11]<-"Diciembre";
//	
//	Repetir
//		Escribir 'Introduce el número del mes';
//		Leer mes;
//		si mes < 1 | mes > 12 Entonces
//			Escribir "El número del mes es incorrecto";
//		FinSi
//	Hasta Que mes >=1 & mes<=12
//	
//	Escribir "El mes ", nombre_mes[mes-1]," tiene ",dias[mes-1]," días.";
//FinProceso

//Proceso E7
//	Definir vector1,vector2,vector3,i Como Entero;
//	Dimension vector1[5],vector2[5],vector3[5];
//	
//	Escribir "Introduce valores para vector1";
//	para i<-0 Hasta 4 Hacer
//		leer vector1[i];
//	FinPara
//	
//	Escribir "Introduce valores para vector2";
//	para i<-0 Hasta 4 Hacer
//		leer vector2[i];
//	FinPara
//	
//	para i<-0 Hasta 4 Hacer
//		vector3[i]<-vector1[i]+vector2[i];
//	FinPara
//	Escribir Sin Saltar "[";
//	para i<-0 hasta 3 Hacer
//		Escribir Sin Saltar vector3[i],", ";
//	FinPara
//	Escribir Sin Saltar vector3[4],"]";
//	escribir "";
//FinProceso

//Proceso E8
//	Definir vnombre,tmp Como Caracter;
//	Definir i,j,vedad,edad_max,exit Como Entero;
//	Dimension vnombre[10], vedad[10];
//	exit:=0;
//	tmp<-"";
//	i<-0;
//	
//	Mientras exit=0 Hacer
//		Escribir "Introduce el nombre del alumno";
//		Leer tmp;
//		si tmp = "*" Entonces
//			exit:=1;
//		SiNo
//			vnombre[i]<-tmp;
//			Escribir "Introduce la edad del alumno";
//			Leer vedad[i];
//		FinSi
//		si i=9 Entonces
//			exit:=1;
//		FinSi
//		si exit=0 Entonces
//			i<-i+1;
//		FinSi
//	FinMientras
//	
//	Escribir "";
//	Escribir "/· Alumnos mayores de edad ·/";
//	Escribir "";
//	
//	para j<-0 Hasta i-1 Hacer
//		si vedad[j] >= 18 Entonces
//			Escribir "Nombre del alumno: ", vnombre[j];
//			Escribir "Edad del alumno: ", vedad[j];
//		FinSi
//	FinPara
//	
//	Escribir "";
//	Escribir "/· Alumnos más mayores ·/";
//	Escribir "";
//	
//	edad_max<-vedad[0];
//	para j<-0 Hasta i-1 Hacer
//		Si vnombre[j]<>"*" Entonces
//			Si vedad[j]>edad_max Entonces
//				edad_max<-vedad[j];
//			FinSi
//		FinSi
//	FinPara
//	
//	para j<-0 Hasta i-1 Hacer
//		Si vnombre[j]<>"*" Entonces
//			Si vedad[j]=edad_max Entonces
//				Escribir "Nombre: ",vnombre[j],". Edad: ",vedad[j];
//			FinSi
//		FinSi
//	FinPara
//FinProceso

//Proceso E9
//	Definir temperaturas_maximas, temperaturas_minimas, max_temperatura, med_temperatura Como Real;
//	Definir i,j,cambio Como Entero;
//	Dimension temperaturas_maximas[5], temperaturas_minimas(5);
//	
//	temperaturas_maximas(0)<-20.5;
//	temperaturas_minimas(0)<-13.47;
//	temperaturas_maximas(1)<-18.5;
//	temperaturas_minimas(1)<-7.92;
//	temperaturas_maximas(2)<-21.01;
//	temperaturas_minimas(2)<-15.67;
//	temperaturas_maximas(3)<-15.89;
//	temperaturas_minimas(3)<-13.67;
//	temperaturas_maximas(4)<-21.111;
//	temperaturas_minimas(4)<-13.47;
//	
//	
//	para i<-0 Hasta 4 Con Paso 1 Hacer
//		Escribir "La temperatura media del día ", i+1," es de ", (temperaturas_maximas[i]+temperaturas_minimas[i])/2;
//	FinPara
//	
//	Repetir
//		j<-0;
//		para i<-0 hasta 4 Hacer
//			si temperaturas_minimas[i]>temperaturas_minimas[i+1] Entonces
//				cambio<-temperaturas_minimas[i];
//				temperaturas_minimas[i]<-temperaturas_minimas[i+1];
//				temperaturas_minimas[i+1]<-temperaturas_minimas[i];
//				j<-j+1;
//			FinSi
//		FinPara
//	Hasta Que j=0
//	
//FinProceso

//Proceso E10
//	Definir matriz,x,z,suma Como Entero;
//	Dimension matriz[5,5];
//	suma<-0;
//	
//	para x<-0 Hasta 4 Hacer
//		para z<-0 Hasta 4 Hacer
//			matriz[x,z]<-azar(101);
//			Escribir Sin Saltar matriz[x,z]," "; 
//		FinPara
//		Escribir "";
//	FinPara
//	
//	para x<-0 Hasta 4 Hacer
//		para z<-0 Hasta 4 Hacer
//			suma<-suma+matriz[x,z];
//		FinPara
//		Escribir "La suma de la fila ", x+1, " es ", suma;
//	FinPara
//	
//	suma<-0;
//	
//	para z<-0 Hasta 4 Hacer
//		para x<-0 Hasta 4 Hacer
//			suma<-suma+matriz[x,z];
//		FinPara
//		Escribir "La suma de la columna ", z+1, " es ", suma;
//	FinPara
//	
//FinProceso

//Proceso E11
//	Definir identidad,fila,columna,i,j Como Entero;
//	Dimension identidad[5,5];
//	i<-0;
//	j<-0;
//	
//	para columna<-0 Hasta 4 Hacer
//		para fila<-0 Hasta 4 Hacer
//			identidad[columna,fila]<-0;
//		FinPara
//	FinPara
//	para columna<-0 Hasta 4 Hacer
//		para fila<-0 Hasta 4 Hacer
//			identidad[i,j]<-1;
//		FinPara
//		i<-i+1;
//		j<-j+1;
//	FinPara
//	para columna<-0 Hasta 4 Hacer
//		para fila<-0 Hasta 4 Hacer
//			Escribir Sin Saltar identidad[columna,fila]," ";
//		FinPara
//		Escribir "";
//	FinPara
//FinProceso

Proceso E12
	
FinProceso
































































