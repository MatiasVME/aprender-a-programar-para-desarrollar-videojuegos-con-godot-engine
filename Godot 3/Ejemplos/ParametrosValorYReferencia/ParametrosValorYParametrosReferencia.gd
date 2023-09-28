extends Node

var b = 100

func _ready():
	# Tipos valor:
	# int, float, bool, string, vector
	# Tipos referencia:
	# objetos, arrays, diccionarios, etc
	
	var x = 3.14
	simple(x)
	print(x)
	print(b)
	
func simple(a):
	a = 1
	b = 1000