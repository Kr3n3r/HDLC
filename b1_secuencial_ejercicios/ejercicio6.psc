Proceso B1E6
	Definir sueldobase,comisiones,venta como Real;
	
	comisiones<-0;
	Escribir 'Introduzca el valor de la primera venta';
	Leer venta;
	comisiones<-comisiones+venta;
	Escribir 'Introduzca el valor de la segunda venta';
	Leer venta;
	comisiones<-comisiones+venta;
	Escribir 'Introduzca el valor de la tercera venta';
	Leer venta;
	comisiones<-comisiones+venta;
	Escribir 'Introduce el sueldo base';
	Leer sueldobase;
	Escribir 'El dinero que se percibir� por concepto de comisiones ser� de ', 0.1*comisiones, ' eur';
	Escribir 'El dinero que percibir� al mes ser� de ', sueldobase+(comisiones*0.1), ' eur';
FinProceso