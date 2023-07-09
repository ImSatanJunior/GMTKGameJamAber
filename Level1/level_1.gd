extends Node2D

var tilemap

var tilesRemoved = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	tilemap = get_node_or_null("InteractiveTilemap")

		
func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			var clickedTile = tilemap.local_to_map(event.position)
			print(tilemap.get_cell_tile_data(0, clickedTile).get)
			var tileId = tilemap.get_cell_tile_data(0, clickedTile).get_custom_data("Name")
			if tileId == "Wall":
<<<<<<< HEAD
				tilemap.set_cell(0, clickedTile, -1)
				tilesRemoved += 1
				Global.setScore(tilesRemoved)


func _onPlayButtonPressed():
	Global.setMovementEnabled(true)
=======
				tilemap.set_cell(0, clickedTile, 0,Vector2i(0, -0))
				tilesRemoved += 1
				Global.setScore(tilesRemoved)
>>>>>>> origin/main
