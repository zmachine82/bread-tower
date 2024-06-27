extends Node2D

var level_scene = preload("res://level.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_world()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func generate_world():
	var instance = level_scene.instantiate()
	add_child(instance)
