extends Node

var notas = []

func _on_OK_pressed():
	notas.append(int($Entrada.text))
	
	var total = 0
	
	for nota in notas:
		total += nota
		
	$Promedio.text = str(float(total) / float(notas.size()))
	
	$Notas.text = str(notas)
