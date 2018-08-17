extends Node

var mi_gato = load("res://Gato.gd").new()
var mi_perro = load("res://Perro.gd").new()

func _ready():
	mi_gato.nombre = "Gatuno"
	mi_gato.decir_nombre()
	mi_gato.maullar()
	
