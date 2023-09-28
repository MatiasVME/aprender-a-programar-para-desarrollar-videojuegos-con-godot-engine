extends Control

const REC_LIVE = preload("res://Game/HUD/Lives/live.tscn")


# Vidas del HUD
var lives := 1:
	set(value):
		lives_change(value)
		lives = value


func _ready():
	Signals.gain_live.connect(_on_gain_live)
	Signals.dead.connect(_on_dead)
	Signals.enemy_dead.connect(_on_enemy_dead)
	
	lives_increase()


func lives_change(current_lives):
	if current_lives < lives:
		lives_decrease()
	elif current_lives > lives:
		lives_increase()


func lives_decrease():
	var current_node = %Lives.get_children()[-1]
	
	var tween = get_tree().create_tween()
	tween.tween_property(
		current_node, 
		"scale", 
		Vector2.ZERO, 
		0.4
	).from(Vector2.ONE).set_trans(Tween.TRANS_BOUNCE)
	await tween.finished
	current_node.queue_free()


func lives_increase():
	var inst_live = REC_LIVE.instantiate()
	
	%Lives.add_child(inst_live)
	
	var tween = get_tree().create_tween()
	tween.tween_property(
		inst_live, 
		"scale", 
		Vector2.ONE, 
		0.4
	).from(Vector2.ZERO).set_trans(Tween.TRANS_BOUNCE)
	inst_live.show()


func _on_gain_live():
	lives += 1


func _on_dead():
	lives -= 1


func _on_enemy_dead(score):
	%Score.text = str("SCORE: ", Main.score)


func _on_menu_pressed():
	if $VBox/HeaderBG/HBox/Menu.button_pressed:
		$GameMenu.show()
		get_tree().paused = true
	else:
		$GameMenu.hide()
		get_tree().paused = false


func _on_resume_pressed():
	$VBox/HeaderBG/HBox/Menu.button_pressed = false
	$GameMenu.hide()
	get_tree().paused = false


func _on_exit_pressed():
	get_tree().paused = false
	Curtain.change_scene_to_file("res://UI/MainScreens/GameOver/GameOver.tscn")
