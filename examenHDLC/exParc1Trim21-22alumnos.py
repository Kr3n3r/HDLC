# # Este codigo ha sido generado por el modulo psexport 20180802-l64 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


# En python no hay forma de elegir como pasar una variable a una
# funcion (por referencia o por valor). Las variables "inmutables"
# (str, int, float, bool) se pasan siempre por copia mientras que
# las demas (listas, objetos, etc.) se pasan siempre por referencia.
# Esto coincide con el comportamiento por defecto en pseint, pero
# cuando utiliza las palabras clave "Por Referencia" para
# alterarlo la traducci�n no es correcta.

# Puntuaci�n: 0,5
def inicializatablero(tablero):
	i = int()
	j = int()
	for i in range(10):
		for j in range(10):
			tablero[j][i] = "V"

# Puntuaci�n: 1
def solicitamensaje():
	mensaje = str()
	while True:# no hay 'repetir' en python
		print("Introduce el mensaje para adivinar en el juego:")
		mensaje = input()
		if len(mensaje)>=100:
			print("El mensaje tiene m�s de 100 caracteres. Introduzcalo de nuevo")
		if len(mensaje)<100: break
	return mensaje

# Puntuacion: 2
def introducemensaje(tablero, mensaje):
	i = int()
	j = int()
	contadorletra = int()
	contadorletra = 0
	for i in range(10):
		for j in range(10):
			if mensaje[contadorletra:contadorletra+1]!="":
				tablero[i][j] = mensaje[contadorletra:contadorletra+1]
				contadorletra = contadorletra+1

# Puntuaci�n: 1
def introduceesquema(tabmens, mensaje):
	i = int()
	j = int()
	contadorletra = int()
	contadorletra = 0
	for i in range(10):
		for j in range(10):
			if mensaje[contadorletra:contadorletra+1]!="":
				if mensaje[contadorletra:contadorletra+1]==" ":
					tabmens[i][j] = " "
				else:
					tabmens[i][j] = "X"
				contadorletra = contadorletra+1

def juego(tablero, tabmens, mensaje):
	fallos = int()
	vocal = int()
	letra = str()
	resolver = str()
	solucion = str()
	logletra = bool()
	resuelto = bool()
	enc = int()
	fallos = 0
	vocal = 0
	resuelto = False
	mostrartablero(tabmens)
	while fallos<3 and not resuelto:
		if vocal==0:
			print("Introduzca consonante. �O desea introducir una vocal?")
			letra = input()
			logletra = False
			logletra = comprobarvocal(str.upper(letra))
			if logletra:
				vocal = 1
		else:
			logletra = True
			while logletra:
				print("Introduzca consonante: ")
				letra = input()
				logletra = comprobarvocal(str.upper(letra))
		enc = 0
		enc = colocarletra(letra,tabmens,tablero)
		fallos = fallos+enc
		mostrartablero(tabmens)
		print("�Quiere resolver? (S/N)")
		resolver = input()
		# Rutina de introducci�n del mensaje a resolver y comprobaci�n, poniendo resuelto a Verdadero o incrementando fallos si no se resuelve. 
		if str.upper(resolver)=="S":
			print("Introduzca mensaje: ")
			solucion = input()
			if mensaje==solucion:
				resuelto = True
			else:
				print("Ese no es el mensaje. Intentelo en otro turno de juego.")
				fallos = fallos+1
	if resuelto:
		print("BRAVO. Encontraste la solucion.")
	else:
		print("Otra vez ser�!")

# Puntuaci�n: 1,5 pts
def mostrartablero(tab):
	i = int()
	j = int()
	contadorcaracter = int()
	for i in range(10):
		for j in range(10):
			if tab[i][j]!="V":
				print(tab[i][j], end="")
		print("")

# Puntuaci�n: 1 pt
def comprobarvocal(letra):
	valor = bool()
	# se que esto no se debe hacer, que se puede simplificar el bloque
	if letra=="A" or letra=="E" or letra=="I" or letra=="O" or letra=="U":
		valor = True
	else:
		valor = False
	return valor

# Puntuaci�n: 2 pts
def colocarletra(letra, tabmens, tablero):
	i = int()
	j = int()
	enc = int()
	for i in range(10):
		for j in range(10):
			if tablero[i][j]==letra:
				tabmens[i][j] = letra
				enc = 0
			else:
				enc = 1
	return enc

if __name__ == '__main__':
	# Tablero con mensaje
	tablero = str()
	tablero = [[str() for ind0 in range(10)] for ind1 in range(10)]
	mensaje = str()
	# Tablero de juego
	tabmens = str()
	tabmens = [[str() for ind0 in range(10)] for ind1 in range(10)]
	j = bool()
	entrada = str()
	mensaje = ""
	entrada = ""
	j = False
	print("Desea jugar a la Ruleta de la Fortuna (S/N)")
	entrada = input()
	if entrada=="s" or entrada=="S":
		j = True
	# Resolver el interior del bucle con las indicaciones que se dan. Puntuaci�n: 1 pt
	while j:
		# Inicializa los elementos necesarios para el juego a vacio
		# Solicita y eval�a el mensaje, devolviendo un mensaje que cumpla con el criterio de tener menos de 100 caracteres. 
		# Ser�a deseable que evaluara que todo sean letras o signos de putuaci�n, pero no da tiempo.
		inicializatablero(tablero)
		inicializatablero(tabmens)
		mensaje = solicitamensaje()
		# Introducir el mensaje en el tablero, seg�n los par�mentros del enunciado (b�sicamente, dejar el resto de la matriz a 'V') e
		# introducir esquema del mensaje (X donde haya letra, ' ' donde haya espacio en blanco y V para el resto de la matriz)
		introducemensaje(tablero,mensaje)
		introduceesquema(tabmens,mensaje)
		# Subprograma que dirija el juego y mensaje y rutina que permita seguir jugando o salir.
		juego(tablero,tabmens,mensaje)
		print("�Quieres jugar otra vez?")
		entrada = input()
		if entrada=="s" or entrada=="S":
			j = True
		else:
			j = False
		print("") # no hay forma directa de borrar la pantalla con Python estandar

