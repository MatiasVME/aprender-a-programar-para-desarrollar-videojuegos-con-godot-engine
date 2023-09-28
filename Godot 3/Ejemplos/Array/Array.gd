extends Control

var mi_array = [1, 2, 3]

func _ready():
	print(mi_array)
	print(mi_array[1])
	
	mi_array.append(true)
	print(mi_array)
	print(mi_array.size())
	
	print("mi_array:", mi_array.size())
