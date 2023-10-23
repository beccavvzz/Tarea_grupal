Funcion  vini_cultores
	
	definir tipo Como Caracter
	definir p_inicial Como Real
	definir t Como Entero
	Repetir
		Escribir "Ingrese el tipo de uva: ";leer tipo
		tipo = Minusculas(tipo)
		si tipo <> "a" & tipo <> "b" Entonces
			Escribir "Ingrese el tipo corecto"
		FinSi
	Mientras Que tipo <> "a" & tipo <> "b"
	
	Repetir
		Escribir "Ingrese el tamaño de la uva: ";leer t
		si t <> 1 & t <> 2 Entonces
			Escribir "Ingrese el tamaño corecto"
		FinSi
	Mientras Que t <> 1 & t <> 2
	
	Escribir "Ingrese el precio inicial: "; leer p_inicial
	Segun tipo Hacer
		"a":
			si t == 1 Entonces
				p_inicial = p_inicial + 0.20
			SiNo
				si t == 2 Entonces
					p_inicial = p_inicial + 0.30
				FinSi
			FinSi
		"b":
			si t == 1 Entonces
				p_inicial = p_inicial - 0.30
			SiNo
				si t == 2 Entonces
					p_inicial = p_inicial - 0.50
				FinSi
			FinSi
	FinSegun
	Escribir "El precio total es $", p_inicial
FinFuncion

Funcion viaje_alumnos
	definir a,c_a Como Entero
	Definir bus Como Real
	bus = 4000
	Escribir "Ingrese el total de los alumnos: "; leer a
	si a >= 100 Entonces
		c_a = 65
		bus = c_a * a
	SiNo
		si a<=99 & a>= 50 Entonces
			c_a =  70
			bus = c_a * a
		SiNo
			si a<=49 & a>= 30 Entonces
				c_a =  95
				bus = c_a * a
			SiNo
				c_a = trunc(bus/a)
			FinSi
		FinSi
	FinSi
	Escribir "El precio por alumno es ",c_a
	Escribir "El precio de la renta del autobus es ", bus
FinFuncion

Funcion precio_km
	Definir km, cost_to,cost_pe Como Real
	Definir ti Como Caracter
	Definir perso Como Entero
	Repetir
		Escribir "Ingrese el tipo de bus: "; leer ti
		ti = Minusculas(ti)
		si ti <> "a" & ti <> "b" & ti <> "c" Entonces
			Escribir "Ingrese el tipo corecto"
		FinSi
	Mientras Que ti <> "a" & ti <> "b" & ti <> "c"
	
	Escribir "Ingrese la cnatidad de personas: "; leer perso
	Escribir "Ingrese el total de km a recorrer: "; leer km
	si perso < 20 Entonces
		perso = 20
	FinSi
	Segun ti Hacer
		"a":
			cost_pe = 2 * km
			cost_to = cost_pe * perso
		"b":
			cost_pe = 2.5 * km
			cost_to = cost_pe * perso
		"c":
			cost_pe = 3 * km
			cost_to = cost_pe * perso
	FinSegun
	Escribir "El costo total de la renta del bus es: $", cost_to
	Escribir "El costo total por persona es: $", cost_pe
FinFuncion

Funcion colas_pagar
	Definir cant Como Entero
	definir cost_u, cost_tot Como Real
	cost_u = 0.50
	Escribir  "Ingrese la cantidad de colas: "; leer cant
	si cant < 23 Entonces
		cost_u = 0.50 + (0.50*0.20)
	FinSi
	cost_tot = cost_u * cant
	Escribir "Cantidad a comprar: ", cant
	Escribir "Costo por unidad: ", cost_u
	Escribir "Base imponible: ", cost_tot
	Escribir "Iva 12%: ", cost_tot * 0.12
	Escribir "Costo total a pagar: ", cost_tot + (cost_tot * 0.12)
FinFuncion

Algoritmo sin_titulo
	//vini_cultores()
	//viaje_alumnos()
	//precio_km()
	//colas_pagar
FinAlgoritmo
