//funcion para calcular el �rea dado el radio
funcion calcularArea (radio)
	definir area Como Real;
	area<-PI*radio^2;
	Escribir "El �rea del c�rculo es ",area," unidades al cuadrado.";
FinFuncion

//funcion para calcular el perimetro dado el radio
funcion calcularPerimetro(radio)
	definir perimetro Como Real;
	perimetro<-2*PI*radio;
	Escribir "El perimetro de la circunferencia es ",perimetro," unidades.";
FinFuncion

Proceso ejercicio6
	definir radio Como Entero;
	Escribir sin saltar "Introduce el radio de la circunferencia";
	leer radio;
	
	calcularArea(radio);
	calcularPerimetro(radio);
FinProceso
