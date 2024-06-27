extends Node2D

@export var room_height = 100
@export var room_width = 100
@export var chunk_size = 32

func _ready():
	var file_data = {
	"levels": [
		{
			"name": "test level",
			"data": [
					["w","w","w","w","w","w","w","w","w","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","0","0","0","0","0","0","0","0","w"],
					["w","w","w","w","w","w","w","w","w","w"]
				]
			}
		]
	}
	generate_level(file_data.levels[0].data)


func generate_level(level: Array):
	var pos = Vector2(0,0)
	for row in level:
		for col in row:
			if col == "w":
				$TileMap.set_cell(0,pos,0, Vector2(0,0) )
			pos += Vector2(1,0)
		pos += Vector2(0,1)
		pos.x = 0

