extends Node2D

func _process(delta):
	update()
	
func _draw():
	draw_line(
		Vector2(0, 0),
		get_viewport().get_mouse_position(),
		Color(0, 1, 1),
		4
	)
	
	draw_circle(
		get_viewport().get_mouse_position(),
		50,
		Color(1, 0, 0.5, 0.3)
	)
	
	draw_rect(
		Rect2(get_viewport().size.x / 2 - 200 / 2, get_viewport().size.y / 2 - 200 / 2, 200, 200),
		Color(1, 1, 1)
	)
	
