extends Node2D

var scene_to_instance = preload("res://Liftprvisprat.tscn")
@onready var upitnik = get_node("upitnik")
@onready var upitnik2 = get_node("upitnik2")
@onready var upitnik3 = get_node("upitnik3")
@onready var upitnik4 = get_node("upitnik4")
@onready var upitnik5 = get_node("upitnik5")
@onready var upitnik6 = get_node("upitnik6")
@onready var upitnik7 = get_node("upitnik7")
@onready var upitnik8 = get_node("upitnik8")
@onready var upitnik9 = get_node("upitnik9")
@onready var upitnik10 = get_node("upitnik10")
@onready var upitnik11 = get_node("upitnik11")
@onready var upitnik12 = get_node("upitnik12")
@onready var upitnik13 = get_node("upitnik13")
@onready var upitnik14 = get_node("upitnik14")
@onready var upitnik15 = get_node("upitnik15")
@onready var upitnik16 = get_node("upitnik16")
@onready var upitnik17 = get_node("upitnik17")
@onready var upitnik18 = get_node("upitnik18")
@onready var upitnik19 = get_node("upitnik19")
@onready var upitnik20 = get_node("upitnik20")
@onready var upitnik21 = get_node("upitnik21")
@onready var player = get_node("Player")

func _process(delta):
	
	if player.get_position().x >= 617 and player.get_position().x <= 705:
		if Input.is_key_label_pressed(KEY_L):
			get_tree().change_scene_to_file("res://world.tscn")

	if player.get_position().x >= 1950 and player.get_position().x <= 2020:
		if Utils.predjendrugisprat == true:
			if Input.is_key_label_pressed(KEY_L):
				get_tree().change_scene_to_file("res://trecisprat.tscn")
			
	if Utils.knjige == 5:
		Utils.predjendrugisprat = true
		
		
	if Utils.predjendrugisprat == true:	
		var object = scene_to_instance.instantiate()
		call_deferred("add_child",object) 
		object.position = Vector2(1967,259)
		
	upitnik.play("default")
	upitnik2.play("default")
	upitnik3.play("default")
	upitnik4.play("default")
	upitnik5.play("default")
	upitnik6.play("default")
	upitnik7.play("default")
	upitnik8.play("default")
	upitnik9.play("default")
	upitnik10.play("default")
	upitnik11.play("default")
	upitnik12.play("default")
	upitnik13.play("default")
	upitnik14.play("default")
	upitnik15.play("default")
	upitnik16.play("default")
	upitnik17.play("default")
	upitnik18.play("default")
	upitnik19.play("default")
	upitnik20.play("default")
	upitnik21.play("default")
