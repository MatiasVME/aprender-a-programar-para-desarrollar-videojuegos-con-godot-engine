extends Node

var numero = 0

func _on_Aumentar_pressed():
	numero += 1
	$Label.text = str(numero)

func _on_Disminuir_pressed():
	numero -= 1
	$Label.text = str(numero)
