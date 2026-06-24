extends Node

## Inferencia en tipado
## Tipádo dinámico v/s tipádo estático
## Operaciones con variables
## Concatenación

# Inferencia de tipo de datos en variables
var mi_variable_con_tipado_dinamico = 100
# Variables con tipado estático
var mi_variable_no_inferida : int = 200
var mi_variable_inferida := 300

# Operaciones con variables
var a := 1
var b := 2
var c := a + b

func _ready() -> void:
	# Algunos distíntos tipos de operaciones
	c = a - b + (b + b) # 3
	c = a * b + (b - 10) # -6
	
	# Algunos operardores aritmeticos:
	# + Suma
	# - Resta
	# * Multiplicación
	# / Divición
	# % Modulo
	# ** Potencia
	c = 10
	c = c + a + b # 13
	c += 2 # 15 es similar a: c = c + 2
	c -= 5 # 10 es equivalente a: c = c - 5
	c = b * 10 / b # 10
	c = b ** 3 # 8
	c = 3 % b # 3 / 2 = 1 pero sobra 1 como es una divición de enteros y usamos %
	
	
	# Imprimir operacion
	print("a = ", a)
	print("b = ", b)
	print("c = ", c)
	
	# Otras formas de imprimir la operación
	print("Operación 1: ", a, " + ", b, " = ", c)
	#print("Hola " + "y " + "chao")
	print("Operación 2: " + str(a) + " + " + str(b) + " = " + str(c))
	print("Operación 3: %s + %s = %s" % [a, b, c])
	print("Operación 4: {0} + {1} = {2}".format([a, b, c]))
	
