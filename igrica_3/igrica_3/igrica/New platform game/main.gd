extends Node2D

func _ready():
	Utils.saveGame()
	Utils.loadGame()
func _on_quit_pressed():
	get_tree().quit()

@onready var tekst = get_node("username")



func _on_play_3_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
	Utils.username = tekst.text
