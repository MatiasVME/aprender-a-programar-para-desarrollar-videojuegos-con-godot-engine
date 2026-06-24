extends Node

## Una breve descripción de este ejemplo
##
## En este ejemplo veremos lo más básico de GDScript
## abarcando temas como:
##
## - Comentarios
## - Variables y tipos de datos
## - Constantes

# Comentarios de una sola línea

"""
Comentarios de
múltiples
líneas
"""

var mi_numero = 123
var mi_numero_tipado: int = 444

# Varios tipos de datos
var entero : int = -3
var decimal : float = 4.7
var cadena_de_caracteres : String = "Soy un texto"
var boleanos : bool = true

const SOY_UNA_CONSTANTE = "Constante..."
const NUMERO_ESPECIAL = 123456789

func _ready() -> void:
	print("__ Variables __")
	
	print("mi_numero es: ", mi_numero)
	
	# Cambiamos el numero
	mi_numero = 456
	print("mi_numero cambiado es: ", mi_numero)
	
	# Cambiamos incluso el tipo del numero
	mi_numero = 321.123
	print("mi_numero cambiado de tipo, es: ", mi_numero)
	
	print("Mi numero tipado es: ", mi_numero_tipado)
	
	print("__ Tipos de datos y Variables __")
	# Imprimiendo mis variables
	print("entero: ", entero)
	print("decimal: ", decimal)
	print("cadena_de_caracteres: ", cadena_de_caracteres)
	print("boleano: ", boleanos)

	print("__ Constantes __")
	print(SOY_UNA_CONSTANTE)
	print("Imprimir número especial: ", NUMERO_ESPECIAL)
	print("Imprimir número especial: ", NUMERO_ESPECIAL + 444)
