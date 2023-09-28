extends Control

func _on_OK_pressed():
	if $VBox/Usuario.text == "Pedro":
		if $"VBox/Contraseña".text == "123abc":
			print("Has podido entrar al sistema")
		else:
			print("Hace falta la contraseña")
	else:
		print("No Puede ingresar")
