extends Node

var contador = 0

func _process(delta):
	contador += 1
	$Frames.text = str(contador)
	$Delta.text = str(delta)
	
	$Personaje.position.x += contador * delta