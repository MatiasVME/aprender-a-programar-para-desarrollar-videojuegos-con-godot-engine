extends Area2D

class_name Enemy

const REC_BULLET = preload("res://Game/Bullet/Bullet.tscn")

const GET_LIVES_PROB = 20

@export
var limit_left : int
@export
var limit_right : int

enum MovementType {
	RIGHT,
	LEFT
}

@export
var movement_type : MovementType


var speed := 150

var dir := Vector2.ZERO
var mov := Vector2.ZERO

var time := 0.0
var time_fire := 0.0

var fire := false

var bullet_owner := Main.BulletOwner.ENEMY
var rand_number


func _ready():
	randomize()
	rand_number = randi_range(5, 15)


func setup(_movement_type : MovementType):
	movement_type = _movement_type
	
	limit_left = global_position.x - 40
	limit_right = global_position.x + 300
	
	match movement_type:
		MovementType.RIGHT:
			dir.x = 1
		MovementType.LEFT:
			dir.x = -1


func _process(delta):
	match movement_type:
		MovementType.RIGHT:
			movement_right(delta)
		MovementType.LEFT:
			movement_left(delta)
	
	fire_bullets(delta)


func fire_bullets(delta):
	time_fire += delta
	
	if time_fire > rand_number:
		fire = true
	
	if fire:
		var inst_bullet = REC_BULLET.instantiate()
		get_parent().add_child(inst_bullet)
		inst_bullet.direction = inst_bullet.BulletDirection.BOTTOM
		inst_bullet.global_position = $BulletSpawn.global_position
		inst_bullet.bullet_owner = Main.BulletOwner.ENEMY
		
		rand_number = randf_range(
			clamp(3 - Main.level * 1.05, 0.5, 6.0), 
			clamp(15 - Main.level * 1.1, 2, 20)
		)
		
		time_fire = 0
		$EnemyLaser.play()
		fire = false


func movement_right(delta):
	time += delta
	
	if global_position.x < limit_right:
		mov.x = dir.x * delta * speed
		mov.y = sin(time * 5) * 1
	else:
		movement_type = MovementType.LEFT
	
	global_position += mov


func movement_left(delta):
	time -= delta
	
	if global_position.x > limit_left:
		mov.x = -(dir.x * delta * speed)
		mov.y = -(sin(time * 5) * 1)
	else:
		movement_type = MovementType.RIGHT
	
	global_position += mov


func dead():
	$Collision.set_deferred("disabled", true)
	$Anim.play("destroy")
	$EnemyDead.play()


func _on_anim_animation_finished(anim_name):
	if anim_name == "destroy":
		if (randi() % GET_LIVES_PROB + 1) == 1:
			Main.lives += 1
		
		Main.score += 5
		queue_free()
