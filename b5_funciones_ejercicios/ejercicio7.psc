SubProceso resultado <- Login (usuario, contrasena) 
	definir resultado Como Logico;
	si usuario = "usuario1" y contrasena = "asdasd" Entonces
		resultado:=Verdadero;
	FinSi	
FinSubProceso



Proceso ejercicio7
	definir resultado Como Logico;
	definir usuario,contrasena Como Caracter;
	definir contador Como Entero;
	contador<-0;
	
	resultado:=falso;
	mientras resultado = falso Hacer
		Escribir "Introduce usuario y contraseña";
		leer usuario;
		leer contrasena;
		resultado<-Login(usuario, contrasena);
		contador<-contador+1;
	FinMientras
	
	Escribir "Número de intentos: ", contador;
	//o contador -1, si se quiere guardar solo los fallos
FinProceso
//falta implementar el número de oportunidades, max 3.