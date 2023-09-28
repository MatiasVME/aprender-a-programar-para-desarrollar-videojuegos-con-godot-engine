extends Control


func _on_play_pressed():
	Curtain.change_scene_to_file("res://Game/Levels/Level.tscn")


func _on_credits_pressed():
	Curtain.change_scene_to_file("res://UI/MainScreens/Credits/Credits.tscn")
