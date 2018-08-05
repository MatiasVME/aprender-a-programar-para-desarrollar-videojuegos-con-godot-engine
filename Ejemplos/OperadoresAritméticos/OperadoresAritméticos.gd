extends Node

func _ready():
	var a = 19
	var b = 5
	
	var result1 = a + b
	var result2 = a - b
	var result3 = a * b
	var result4 = a / b
	var result5 = a % b
	
	print(result1)
	print(result2)
	print(result3)
	print(result4)
	print(result5)
	
	var result6 = a + 1 * b - (a - b) / 2
	print(result6)