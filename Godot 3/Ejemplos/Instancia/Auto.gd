extends Object

var color
var numero_ruedas
var encendido

func _init():
	print("Hemos creado el auto")
	
	color = "red"
	numero_ruedas = 4
	encendido = false
	
func encender():
	print("Estoy encendido")
	encendido = true
	
func avanzar(km):
	if encendido:
		print("Estoy avanzando a ", km, "km por hora")
	else:
		print("Necesito ser encendido")
