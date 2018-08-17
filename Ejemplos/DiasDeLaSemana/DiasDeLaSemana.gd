extends Control

func _on_Entrada_text_changed(new_text):
	match int(new_text):
		1:
			$Salida.text = "Es lunes"
		2:
			$Salida.text = "Es martes"
		3:
			$Salida.text = "Es miercoles"
		4:
			$Salida.text = "Es jueves"
		5:
			$Salida.text = "Es viernes"
		6:
			$Salida.text = "Es sabado"
		7:
			$Salida.text = "Es domingo"
		_:
			$Salida.text = "mmmm..."
