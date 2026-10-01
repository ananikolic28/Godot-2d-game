extends Node2D



func _ready():
	pass 

var scene_to_instance = preload("res://Lift.tscn")

@onready var anim1 = get_node("npc8")
@onready var anim2 = get_node("npc7")
@onready var anim3 = get_node("npc6")
@onready var anim4 = get_node("npc5")
@onready var anim5 = get_node("npc4")
@onready var anim6 = get_node("npcspecial")
@onready var cat1 = get_node("cat1")
@onready var cat2 = get_node("cat2")
@onready var cat3 = get_node("cat3")
@onready var dog1 = get_node("dog1")
@onready var dog2 = get_node("dog2")
@onready var bird1 = get_node("bird1")
@onready var bird2 = get_node("bird2")
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

func _process(delta):
	
	if Utils.ninigotov == true:	
		var object = scene_to_instance.instantiate()
		call_deferred("add_child",object) 
		object.position = Vector2(1713,258)
	
	anim1.play("idle")
	anim2.play("idle")
	anim3.play("idle")
	anim4.play("idle")
	anim5.play("idle")
	anim6.play("idle")
	cat1.play("default")
	cat2.play("default")
	cat3.play("default")
	dog2.play("default")
	bird1.play("default")
	bird2.play("default")
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

func _on_area_2d_area_entered(area):
	dog1.stop()
	dog1.play("attack")


func _on_area_2d_area_exited(area):
	dog1.stop()
	dog1.play("default")
