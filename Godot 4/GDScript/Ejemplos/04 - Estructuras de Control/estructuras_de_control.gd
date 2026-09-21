extends Node

func _ready() -> void:
	var numero_aleatorio := randi_range(1, 6)
	print("Mi número aleatorio es: ", numero_aleatorio)
	
	if numero_aleatorio >= 3 and numero_aleatorio != 6:
		print("Bien es mayor o igual a 3")
		
		if numero_aleatorio == 3:
			print("Pero es solo un: ", numero_aleatorio)
		elif numero_aleatorio == 4:
			print("Igual es un buen número: ", numero_aleatorio)
		elif numero_aleatorio == 5:
			print("Casi casi... es un!: ", numero_aleatorio)
	elif numero_aleatorio == 6:
		print("Que suerte has tenido es: ", numero_aleatorio)
	else:
		print("Es un mal número: ", numero_aleatorio)
