Proceso B4E5
	Definir str, nstr Como Caracter;
	Definir i Como Entero;
	nstr<-"";
	
	Escribir Sin Saltar "Introduce tu nombre y apellidos ";
	Leer str;
	
	para i<-0 Hasta Longitud(str) Hacer
		si i=0 Entonces
			nstr<-Concatenar(nstr,Mayusculas(Subcadena(str,i,i)));
			i<-i+1;
		FinSi
		si Subcadena(str,i,i) = " " Entonces
			nstr<-Concatenar(nstr, Mayusculas(Subcadena(str,i+1,i+1)));
			i<-i+1;
		SiNo
			nstr<-Concatenar(nstr, Minusculas(Subcadena(str,i,i)));
			nstr<-Concatenar(nstr, " ");
		FinSi
	FinPara
	
	Escribir nstr;
FinProceso