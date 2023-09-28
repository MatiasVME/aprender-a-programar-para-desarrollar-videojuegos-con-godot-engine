extends Node

func _ready():
#	var a = "texto"
#
#	match a:
#		1:
#			print("Es uno")
#		2:
#			print("Es 2")
#		"texto":
#			print("Es un texto")

	var b = "dslfdj"

	print(typeof(b))

	match typeof(b):
		TYPE_INT:
			print("Es un entero")
		TYPE_STRING:
			print("Es un texto")