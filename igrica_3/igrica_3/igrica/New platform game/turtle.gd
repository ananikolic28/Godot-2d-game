extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player
var SPEED = 50
var chase = false


func _ready():
	get_node("AnimatedSprite2D").play("IdleNoSpikes")
	
func _physics_process(delta):
	#Gravity for Frog
	velocity.y += gravity * delta
	if chase == true:
		if get_node("AnimatedSprite2D").animation != "Death":
			get_node("AnimatedSprite2D").play("Run")
		player = get_node("../Player")
		var direction = (player.position - self.position).normalized()
		if direction.x > 0:
			get_node("AnimatedSprite2D").flip_h = true
		else:
			get_node("AnimatedSprite2D").flip_h = false
		velocity.x = direction.x * SPEED
	else:
		if get_node("AnimatedSprite2D").animation != "Death":
			get_node("AnimatedSprite2D").play("Idle")
		velocity.x = 0
	move_and_slide()
	

	






func _on_playerdetection_area_entered(area):
	if area.name == "Player":
		get_node("AnimatedSprite2D").play("spikesout")
		await get_node("AnimatedSprite2D").animation_finished
		get_node("AnimatedSprite2D").play("IdleSpikes")


func _on_playerdetection_area_exited(area):
	get_node("AnimatedSprite2D").play("spikesin")
	await get_node("AnimatedSprite2D").animation_finished
	get_node("AnimatedSprite2D").play("IdleNoSpikes")


func _on_playercollision_area_entered(area):
	if area.name == "Player":
		Game.playerHP -= 6
		
