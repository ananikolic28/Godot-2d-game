extends Node2D
@onready var player = get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.get_position().x >= 130 and player.get_position().x <= 185:
		if Input.is_key_label_pressed(KEY_L):
			get_tree().change_scene_to_file("res://secondfloor.tscn")
