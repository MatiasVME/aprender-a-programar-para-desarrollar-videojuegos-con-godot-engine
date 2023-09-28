extends Control

func _ready():
	pass

func _on_Suma_mouse_entered():
	$Operador.text = "+"

func _on_Resta_mouse_entered():
	$Operador.text = "-"

func _on_Multiplicacion_mouse_entered():
	$Operador.text = "*"

func _on_Division_mouse_entered():
	$Operador.text = "/"

func _on_Suma_pressed():
	$Resultado.text = str(int($Num1.text) + int($Num2.text))

func _on_Resta_pressed():
	$Resultado.text = str(int($Num1.text) - int($Num2.text))

func _on_Multiplicacion_pressed():
	$Resultado.text = str(int($Num1.text) * int($Num2.text))

func _on_Division_pressed():
	$Resultado.text = str(int($Num1.text) / int($Num2.text))
