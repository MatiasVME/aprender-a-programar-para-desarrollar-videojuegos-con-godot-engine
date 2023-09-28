extends Node2D

# Numero de lineas
const LINES_X = 16
const LINES_Y = 16

var size_x
var size_y

func _process(delta):
	update()
	
func _draw():
	# Tamaño de los rectangulos
	size_x = get_viewport().size.x / LINES_X
	size_y = get_viewport().size.y / LINES_Y
	
	grid_x(size_x)
	grid_y(size_y)
	
func grid_x(size_x):
	for x in range(LINES_X):
		draw_line(
			Vector2(size_x * x, 0),
			Vector2(size_x * x, get_viewport().size.y),
			Color(1, 0, 0),
			3
		)

func grid_y(size_y):
	for y in range(LINES_Y):
		draw_line(
			Vector2(0, size_y * y),
			Vector2(get_viewport().size.x, size_y * y),
			Color(1, 0, 0),
			3
		)