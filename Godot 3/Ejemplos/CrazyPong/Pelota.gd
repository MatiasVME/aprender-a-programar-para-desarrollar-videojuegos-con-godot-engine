extends RigidBody2D

func _ready():
	randomize()
	
func _on_Timer_timeout():
	var imp_x = rand_range(-400, 400)
	var imp_y = rand_range(-400, 400)
	
	apply_impulse(Vector2(), Vector2(imp_x, imp_y))
	
	$Anim.play("color")
