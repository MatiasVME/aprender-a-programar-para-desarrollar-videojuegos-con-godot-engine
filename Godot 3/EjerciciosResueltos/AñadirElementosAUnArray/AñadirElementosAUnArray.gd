extends Control

var mi_array = []

func _on_OK_pressed():
	mi_array.append($Entrada.text)
	$Texto.text = str(mi_array)
	$Entrada.text = ""