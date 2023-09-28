extends Control

func change_scene_to_file(scene):
	$Anim.play("show")
	await $Anim.animation_finished
	
	get_tree().change_scene_to_file(scene)
	
	$Anim.play_backwards("show")
	await $Anim.animation_finished
