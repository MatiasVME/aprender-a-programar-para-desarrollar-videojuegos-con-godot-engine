extends Node

var ins_personaje = preload("res://Personaje.tscn").instance()

func _input(event):
	if event.is_action_pressed("left_click"):
		var mouse_pos = get_viewport().get_mouse_position()
		var personaje = ins_personaje.duplicate()
		add_child(personaje)
		personaje.position = mouse_pos
		personaje.add_to_group("Personaje")

func _on_Eliminar_pressed():
	for personaje in get_tree().get_nodes_in_group("Personaje"):
		personaje.queue_free()
