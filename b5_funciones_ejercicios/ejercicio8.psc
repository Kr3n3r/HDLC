Proceso ejercicio8
	definir num Como Entero;
	Escribir Sin Saltar "Introduce el número para calcular factorial-";
	leer num;
	
	Escribir "El factorial de num es ",calcularfactorial(num);
FinProceso

funcion resultado <- calcularfactorial(num)
	definir resultado como entero;
	resultado<-1;
	
	si num>=1 Entonces
		resultado<-num*calcularfactorial(num-1);
	sino
		resultado <- 1;
	FinSi
	
FinFuncion
