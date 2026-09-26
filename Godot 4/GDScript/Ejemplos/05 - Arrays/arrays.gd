extends Node

var mi_array_1 = []
var mi_array_2 = ["Hola", 2, 3.1415, "Chao", true]
var mi_array_3 : Array[int] = [3, 6, 2, 1]
var mi_array_4 = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9]
]

func _ready() -> void:
	print("Esta vacio: ", mi_array_1.is_empty())
	mi_array_1.append("FuryCode")
	print("mi_array_1: ", mi_array_1)
	print("Esta vacio: ", mi_array_1.is_empty())
	
	print("mi_array_2: ", mi_array_2)
	print("mi_array_2: ", mi_array_2.size())
	print("mi_array_2: ", mi_array_2[0])
	print("mi_array_2: ", mi_array_2[4])
	print("mi_array_2: ", mi_array_2[-1])
	
	mi_array_3.append("hola")
	print(mi_array_3)
	
	print(mi_array_4)
	
	print(mi_array_4[0][0]) # 1
	print(mi_array_4[1][2]) # 6
	print(mi_array_4[0][-1]) # 3
	print(mi_array_4[-1][-1]) # 9
	print(mi_array_4[2][2]) # 9
	mi_array_4[2].append(randi_range(10, 100))
	mi_array_4[2].append(randi_range(10, 100))
	mi_array_4[2].append(randi_range(10, 100))
	
	print(mi_array_4)
	
	mi_array_4 = []
	print(mi_array_4)
