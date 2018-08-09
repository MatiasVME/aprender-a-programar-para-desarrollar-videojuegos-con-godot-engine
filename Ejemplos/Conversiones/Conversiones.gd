extends Control

#var a = 3.54354

func _ready():
#	print(bool(0))
	
	# int()
	# str()
	# float()
	# bool()
	pass

func _on_Sumar_pressed():
	var result = int($Num1.text) + int($Num2.text)
	$Display.text = str(result)
