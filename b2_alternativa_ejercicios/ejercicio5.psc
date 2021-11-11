Proceso B2E5
	Definir user, password Como Caracter;
	Escribir 'Introduce el usuario:';
	Leer user;
	Escribir 'Introuduce la contraseña';
	Leer password;
	si user='pepe' Entonces
		si password='asdasd' Entonces
			Escribir 'Has accedido al sistema';
		Sino
			Escribir 'ERROR';
		FinSi
	Sino
		Escribir 'ERROR';
	FinSi
FinProceso