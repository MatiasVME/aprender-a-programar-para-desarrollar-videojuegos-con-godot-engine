extends Node

# Un bucle es una secuencia de instrucciones
# que se repite mientras se cumpla una condición.

func _ready():
	var i = 0
	
	while i < 10:
		i += 1
		print("i: ", i)
		
	var j = 10
	
	while j > 0:
		print("j: ", j)
		j -= 1