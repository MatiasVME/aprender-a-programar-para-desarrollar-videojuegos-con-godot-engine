extends Area2D

class_name Player

const REC_BULLET = preload("res://Game/Bullet/Bullet.tscn")

const LIMIT_LEFT = 60
const LIMIT_RIGHT = 660

var speed = 300

var dir = 0
var mov := Vector2.ZERO

var fire

var bullet_owner = Main.BulletOwner.PLAYER
var one_time_dead := true

var time := 0.0

func _process(delta):
	movement_and_inputs(delta)
	fire_bullets(delta)


func movement_and_inputs(delta):
	dir = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	
	if dir == 1 and global_position.x < LIMIT_RIGHT:
		mov.x = dir * delta * speed
	elif dir == -1  and global_position.x > LIMIT_LEFT:
		mov.x = dir * delta * speed
	else:
		mov.x = 0
	
	global_position += mov


func fire_bullets(delta):
	time += delta
	fire = Input.is_action_just_pressed("ui_accept")
	
	if fire and time >= 0.2:
		var inst_bullet = REC_BULLET.instantiate()
		get_parent().add_child(inst_bullet)
		inst_bullet.direction = inst_bullet.BulletDirection.TOP
		inst_bullet.global_position = $BulletSpawn.global_position
		$Laser.play()
		
		time = 0.0


func dead():
	if not $Anim.is_playing() and one_time_dead:
		$Anim.play("dead")
		one_time_dead = false
		
		Main.lives -= 1
		$Explosion.play()


func _on_anim_animation_finished(anim_name):
	if anim_name == "dead":
		queue_free()
