extends KinematicBody2D

export (int) var paleta = 1 # tambien este puede ser la paleta 2

func _process(delta):
	var y_movement = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	
	if y_movement == 1:
		if paleta == 1 and global_position.y <= get_viewport().size.y - 150:
			move_local_y(10)
		elif paleta== 2 and global_position.y >= 10:
			move_local_y(-10)
	elif y_movement == -1:
		if paleta == 1 and global_position.y >= 10:
			move_local_y(-10)
		elif paleta== 2 and global_position.y <= get_viewport().size.y - 150:
			move_local_y(10)