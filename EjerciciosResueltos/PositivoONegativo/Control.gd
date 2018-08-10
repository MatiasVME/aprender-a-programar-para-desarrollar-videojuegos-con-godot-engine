extends Control

func _on_Entrada_text_changed(new_text):
	if int(new_text) == 0:
		$VBox/Dice.text = "Es 0"
	elif int(new_text) > 0:
		$VBox/Dice.text = "Es positivo"
		
		if int(new_text) == 7:
			$VBox/Suerte.text = ":O has tenido suerte"
	else:
		$VBox/Dice.text = "Es negativo"
