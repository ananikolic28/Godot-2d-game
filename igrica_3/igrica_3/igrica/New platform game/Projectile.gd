extends CharacterBody2D

@export var SPEED = 100
var dir : float 
var spawnPos : Vector2
var spawnRot : float

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot
	
func _physics_process(delta):
	velocity = Vector2(-30,0)
	move_and_slide()


func _on_area_2d_area_entered(area):
	queue_free()
	Game.playerHP -= 1


func _on_timer_timeout():
	queue_free()
