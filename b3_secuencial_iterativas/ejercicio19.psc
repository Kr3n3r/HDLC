Proceso B3E19
	Definir h,m,s Como Entero;
	h<-0;
	m<-0;
	s<-0;
	para h<-0 Hasta 60 Hacer
		para m<-0 hasta 60 Hacer
			para s<-0 hasta 60 Hacer
				Escribir  "   ·----------·";
				Escribir "  /            \";
				Escribir " ||   ",h,":",m,":",s,"   ||";
				Escribir "  \            /";
				Escribir  "   ·----------·";
				esperar 1 Segundo;
				Borrar Pantalla;
			FinPara
			Borrar Pantalla;
		FinPara
		Borrar Pantalla;
	FinPara
FinProceso