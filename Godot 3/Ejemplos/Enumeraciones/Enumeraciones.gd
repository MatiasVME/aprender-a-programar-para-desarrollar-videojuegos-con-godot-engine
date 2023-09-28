extends Node

enum {STATE_IDLE, STATE_RUN, STATE_ATACK, STATE_JUMP}

enum Position {LEFT, CENTER, RIGHT}

func _ready():
	print(STATE_IDLE)
	print(STATE_RUN)
	print(STATE_ATACK)
	print(STATE_JUMP)
	
	print(Position.LEFT)
	print(Position.CENTER)
	print(Position.RIGHT)
