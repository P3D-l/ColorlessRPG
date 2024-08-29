extends Camera2D

@export var tilemap: TileMap 

func _ready():
	var mapRect = tilemap.get_used_rect()
	var tilesize = tilemap.rendering_quadrant_size
	var worldsize = mapRect.size * tilesize 
	
	limit_right = worldsize.x
	limit_bottom = worldsize.y
	
