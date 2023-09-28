extends Node

# *) El bucle for es como el bucle while
#    pero más automático.
# *) No evalua una condición sino que recorre
#    una lista de elementos.
# *) Puede entender Array, String y Dictionary

var a = [1, true, null, "aa"]
var s = "Hola Mundo"
var d = {
	"a": 1,
	"b": 2,
	"c": 3
} 

func _ready():
	for i in range(10):
		print(i)
	
	