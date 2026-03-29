extends Node2D


const REC_PLAYER = preload("res://Game/Players/Player.tscn")
const REC_ENEMY = preload("res://Game/Enemies/Enemy.tscn")

const INITAL_POS = Vector2(360, 670)


func _ready():
	spawn_enemies()
	spawn_player()
	
	Main.lives = 1
	
	Signals.dead.connect(_on_dead)
	
	$LevelMusic.play()


func _input(event):
	# Para testeo de la vidas
	if event.is_action_pressed("+"):
		Main.lives += 1
	elif event.is_action_pressed("-"):
		Main.lives -= 1


func spawn_player():
	var new_player = REC_PLAYER.instantiate()
	add_child(new_player)
	new_player.global_position = INITAL_POS


func spawn_enemies():
	var x_increment := 138
	var y_increment := 0
	
	for i in 3:
		y_increment += 100
		
		for j in 3:
			var enemy = REC_ENEMY.instantiate()
			$Enemies.add_child(enemy)
			
			enemy.global_position.x = x_increment
			enemy.global_position.y = y_increment
			enemy.setup(enemy.MovementType.RIGHT)
			
			x_increment += 100
		
		x_increment = 138


func _on_dead():
	spawn_player()


func _on_timer_timeout():
	if $Enemies.get_child_count() == 0:
		Main.level += 1
		spawn_enemies()
