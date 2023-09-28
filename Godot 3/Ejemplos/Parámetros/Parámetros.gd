extends Node

func _ready():
	suma(1, 3)
	
	decir_hola(3)
	decir_hola(10)
	
func suma(a, b):
	return a + b
	
func decir_hola(cantidad):
	for i in range(cantidad):
		print(i, " Hola")