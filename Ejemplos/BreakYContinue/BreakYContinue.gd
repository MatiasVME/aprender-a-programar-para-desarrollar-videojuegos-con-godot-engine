extends Control

var arr = [1, 8, 5, 3]

func _on_LineEdit_text_changed(new_text):
	print("____---- Comprobando ----____")
	
	var input_num = int(new_text)
	
	for e in arr:
		if e == input_num:
			print("Existe!!!")
			continue
		
		print("iterando")
	
# break : rompe el bucle
# continue : rompe la iteración y sigue
#  con el bucle