extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var anim = get_node("animacijanini")

func _physics_process(delta):
	
	if Utils.ninigotov !=  true:
		anim.play("idle")
	if Utils.ninigotov == true:
		anim.play("run")
		var speed = 3 # Change this to increase it to more units/second
		position = position.move_toward(Vector2(1750,304), delta * speed)
		
		
		
