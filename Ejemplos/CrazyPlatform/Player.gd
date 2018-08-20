extends KinematicBody2D

var direction = 0

var move_x = 0
var move_y = 0

func _physics_process(delta):
	move_y += 10
	
	direction = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	
	if direction == 1:
		move_x = 200
	elif direction == -1:
		move_x = -200
	else:
		move_x = 0
		
	if is_on_floor():
		move_y = 0
		
		if Input.is_action_pressed("ui_up"):
			move_y = -400
			$Anim.play("jump")
		
	move_and_slide(Vector2(move_x, move_y), Vector2(0, -1))
