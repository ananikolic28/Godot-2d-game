extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(body):
	if body.name == "Player":
		print("cao")
		if Input.is_key_label_pressed(KEY_L):
			print("kliknuo")
			get_tree().change_scene_to_file("res://secondfloor.tscn")
