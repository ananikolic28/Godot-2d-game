extends Node2D

@onready var enemy2 = get_tree().get_root()
@onready var projectile = load("res://projectile.tscn")

func _ready():
	shoot()
	
func shoot():
	get_node("AnimatedSprite2D2").play("attack")
	var instance = projectile.instantiate()
	instance.dir = rotation
	instance.spawnPos = global_position
	instance.spawnRot = rotation
	enemy2.add_child.call_deferred(instance)
	
func _on_timer_timeout():
	shoot()


func _on_m_area_entered(area):
	get_node("AnimatedSprite2D2").play("hurt")
	await get_node("AnimatedSprite2D2").animation_finished
	self.queue_free()
