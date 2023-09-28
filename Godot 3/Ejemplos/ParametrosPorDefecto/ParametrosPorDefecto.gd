extends Node

func _ready():
	saludar()
	saludar("Matias")

func saludar(nombre = "Juansio"):
	print("Hola ", nombre)
