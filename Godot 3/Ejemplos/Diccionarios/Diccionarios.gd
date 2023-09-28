extends Node

var mi_array = [1, null, true]

var mi_diccionario = {
	"Score": 100,
	"Lives": 3,
	"UnArray": [1, 2, 3],
	"Otro": {
		"Otro1": 1,
		"Otro2": 2
	}
}

var mi_diccionario2 = {
	Score = 100,
	Lives = 3,
	UnArray = [1, 2, 3]
}

func _ready():
	print(mi_array[2])
	print(mi_diccionario["Score"])
	print(mi_diccionario["Otro"]["Otro1"])
	print(mi_diccionario.keys())
	print(mi_diccionario.values())
