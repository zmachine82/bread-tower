extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$TileMap.set_cell(
	   0,                     # Layer ID (0 by default)
	   Vector2i(0, 0) ,       # Coordinate (x, y) to place
	   0,                     # Tile id, of tile in tileset
	   Vector2i(0, 0)         # atlas location
	)


