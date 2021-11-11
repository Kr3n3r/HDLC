Proceso B4E1
	Definir palabra Como Caracter;
	Definir i Como Entero;
	i<-0;
	Escribir 'Introduce una palabra:';
	Leer palabra;
	para i<-0 Hasta Longitud(palabra)-1 Hacer
		Escribir Subcadena(palabra,i,i);
	FinPara
FinProceso