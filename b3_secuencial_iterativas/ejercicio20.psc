Proceso B3E20
	Definir opt,exit,n Como Entero;
	exit:=0;
	n<-2;
	
	mientras exit=0 Hacer
		Escribir "·-----------MENU-----------·";
		Escribir "I 1) Muestra un ascii art  I";
		Escribir "I 2) Opción 2              I";
		Escribir "I 3) Exit                  I";
		Escribir "·-----------MENU-----------·";	
		Leer opt;
		Borrar Pantalla;
		Escribir "·-----------MENU-----------·";
		Escribir "I 1) Muestra un ascii art  I";
		Escribir "I 2) Opción 2              I";
		Escribir "I 3) Exit                  I";
		Escribir "·-----------MENU-----------·";
		segun opt Hacer
			1:
				Escribir ".__________________________________________________.";
				Escribir "|////////////////////////////////////////////////||";
				Escribir "|////////////////////////////////////////////////||";
				Escribir "|////////////////////////////////////////////////||";
				Escribir "|////////////////////////////////////////////////||    ___.";
				Escribir "|////////////////////////////////////////////////||   /    \";
				Escribir "!__________________________________________________!  |      |";
				Escribir "|   __ __ __ __ __ __ __ __ __ __  /|\ ATARI 2080ST|  |      |";
				Escribir "|__/_//_//_//_//_//_//_//_//_//_/____________--____|  |  .---|---.";
				Escribir "| ______________________________________________   |  |  |   |   |";
				Escribir "| [][][][][][][][][][][][][][][__] [_][_] [][][][] |  |  |---i---|";
				Escribir "| [_][][][][][][][][][][][][]| |[] [][][] [][][][] |  |  |       |";
				Escribir "| [__][][][][][][][][][][][][__|[] [][][] [][][][] |  |  |       |";
				Escribir "| [_][][][][][][][][][][][][_]            [][][]|  |  |  |  /|\  |";
				Escribir "|    [_][________________][_]             [__][]LI |  |   \_____/";
				Escribir "|__________________________________________________|  ;";
				Escribir "\___/";
				esperar 5 segundos;
				Borrar Pantalla;
			2:
				Escribir "Prueba";
				esperar 5 segundos;
				Borrar Pantalla;
			3:
				Escribir "Saliendo en 3";
				para n<-2 Hasta 0 Con Paso -1 Hacer
					Esperar 1 segundo;
					Escribir n;
				FinPara
				Esperar 1 segundo;
				exit<-1;
		FinSegun
	FinMientras
FinProceso