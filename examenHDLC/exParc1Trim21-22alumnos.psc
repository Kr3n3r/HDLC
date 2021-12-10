Proceso rultaSinResolver
	Definir tablero Como Caracter; //Tablero con mensaje
	Dimension tablero[10,10];
	Definir mensaje como Caracter;
	Definir tabMens Como Caracter; //Tablero de juego
	Dimension tabMens[10,10];
	
	Definir j Como Logico;
	Definir entrada Como Caracter;
	
	mensaje<-'';
	entrada<-'';
	j<-FALSO;
	
	Escribir "Desea jugar a la Ruleta de la Fortuna (S/N)";
	Leer entrada;
	
	SI entrada='s' O entrada='S' Entonces
		j<-Verdadero;
	FinSi
	
	//Resolver el interior del bucle con las indicaciones que se dan. Puntuación: 1 pt
	Mientras j Hacer
		//Inicializa los elementos necesarios para el juego a vacio
		//Solicita y evalúa el mensaje, devolviendo un mensaje que cumpla con el criterio de tener menos de 100 caracteres. 
		//Sería deseable que evaluara que todo sean letras o signos de putuación, pero no da tiempo.
		inicializaTablero(tablero);
		inicializaTablero(tabMens);
		mensaje <- solicitaMensaje();
		
		
		//Introducir el mensaje en el tablero, según los parámentros del enunciado (básicamente, dejar el resto de la matriz a 'V') e
		//introducir esquema del mensaje (X donde haya letra, ' ' donde haya espacio en blanco y V para el resto de la matriz)
		introduceMensaje(tablero,mensaje);
		introduceEsquema(tabMens,mensaje);
		
		
		//Subprograma que dirija el juego y mensaje y rutina que permita seguir jugando o salir.
		juego(tablero,tabMens,mensaje);
		Escribir "¿Quieres jugar otra vez?";
		leer entrada;
		SI entrada='s' O entrada='S' Entonces
			j<-Verdadero;
		sino
			j<-falso;
		FinSi
		borrar pantalla;
		
		
		
	FinMientras
	
	
	
FinProceso


// Puntuación: 0,5
Funcion inicializaTablero(tablero)
	definir i,j Como Entero;
	para i<-0 hasta 9 Hacer
		para j<-0 Hasta 9 Hacer
			tablero(j,i) <- "V";
		FinPara
	FinPara
FinFuncion

//Puntuación: 1
Funcion mensaje<-solicitaMensaje()
	definir mensaje como caracter;
	
	Repetir
		Escribir "Introduce el mensaje para adivinar en el juego:";
		leer mensaje;
		si Longitud(mensaje) >= 100 Entonces
			Escribir "El mensaje tiene más de 100 caracteres. Introduzcalo de nuevo";
		FinSi
	Hasta Que Longitud(mensaje) < 100
	
FinFuncion

//Puntuacion: 2
Funcion introduceMensaje(tablero, mensaje)
	definir i,j,contadorletra Como Entero;
	contadorletra<-0;
	
	para i<-0 hasta 9 Hacer
		para j<-0 hasta 9 Hacer
			si Subcadena(mensaje, contadorletra, contadorletra) <> "" Entonces
				tablero(i,j)<-Subcadena(mensaje, contadorletra, contadorletra);
				contadorletra<-contadorletra+1;
			FinSi
		FinPara
	FinPara
	
FinFuncion

//Puntuación: 1
Funcion introduceEsquema(tabMens, mensaje)
	definir i,j,contadorletra Como Entero;
	contadorletra<-0;
	
	para i<-0 hasta 9 Hacer
		para j<-0 hasta 9 Hacer
			si Subcadena(mensaje, contadorletra, contadorletra) <> "" Entonces
				si Subcadena(mensaje, contadorletra, contadorletra) == " " Entonces
					tabMens(i,j)<-" ";
				SiNo
					tabMens(i,j)<-"X";
				FinSi
				contadorletra<-contadorletra+1;
			FinSi
		FinPara
	FinPara
	
FinFuncion

Funcion juego(tablero, tabMens, mensaje)
	Definir fallos, vocal Como Entero;
	Definir letra, resolver, solucion Como Caracter;
	Definir logLetra, resuelto Como Logico;
	Definir enc como Entero;
	
	fallos<-0;
	vocal<-0;
	resuelto<-Falso;
	
	mostrarTablero(tabMens);
	
	Mientras fallos<3 & No resuelto Hacer
		Si vocal=0 Entonces
			Escribir "Introduzca consonante. ¿O desea introducir una vocal?";
			Leer letra;	
			logLetra<-Falso;
			logLetra<-comprobarVocal(Mayusculas(letra));
			Si  logLetra Entonces
				vocal<-1;
			FinSi
		SiNo
			logLetra<-Verdadero;
			Mientras logLetra Hacer
				Escribir "Introduzca consonante: ";
				Leer letra;
				logLetra<-comprobarVocal(Mayusculas(letra));
			FinMientras
		FinSi
		
		enc<-0;
		
		enc<-colocarLetra(letra, tabMens, tablero);
		
		fallos<-fallos+enc;
		
		mostrarTablero(tabMens);
		
		Escribir "¿Quiere resolver? (S/N)";
		Leer resolver;
		
		
		//Rutina de introducción del mensaje a resolver y comprobación, poniendo resuelto a Verdadero o incrementando fallos si no se resuelve. 
		Si Mayusculas(resolver)='S' Entonces
			Escribir "Introduzca mensaje: ";
			Leer solucion;
			Si mensaje=solucion Entonces
				resuelto<-Verdadero;
			SiNo
				Escribir "Ese no es el mensaje. Intentelo en otro turno de juego.";
				fallos<-fallos+1;
			FinSi
		FinSi
		
		
	FinMientras
	
	Si resuelto Entonces
		Escribir "BRAVO. Encontraste la solucion.";
	SiNo
		Escribir "Otra vez será!";
	FinSi
	
FinFuncion


// Puntuación: 1,5 pts
Funcion mostrarTablero(tab)
	definir i,j,contadorcaracter Como Entero;
	
	para i<-0 Hasta 9 Hacer
		para j<-0 Hasta 9 Hacer
			si tab(i,j)<>"V" Entonces
				Escribir Sin Saltar tab(i,j);
			FinSi
		FinPara
		escribir "";
	FinPara
	
FinFuncion


//Puntuación: 1 pt
Funcion valor<-comprobarVocal(letra)
	definir valor Como Logico;
	
	//se que esto no se debe hacer, que se puede simplificar el bloque
	si letra == "A" o letra == "E" o letra == "I" o letra == "O" o letra == "U" Entonces  
		valor<-verdadero;
	SiNo
		valor<-falso;
	FinSi
	
FinFuncion


//Puntuación: 2 pts
Funcion enc<-colocarLetra(letra, tabMens, tablero)
	definir i,j,enc Como Entero;
	
	para i<-0 Hasta 9 Hacer
		para j<-0 hasta 9 Hacer
			si tablero(i,j)==letra Entonces
				tabMens(i,j)<-letra;
				enc<-0;
			sino
				enc<-1;
			FinSi
		FinPara
	FinPara
	
FinFuncion
	
