extends Node

func _ready():
	mi_metodo()
	
	print(mi_metodo2())
	
func mi_metodo():
	print("Hola")
	
func mi_metodo2():
	return 2 + 2
	
