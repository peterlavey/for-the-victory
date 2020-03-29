class_name Stage extends Node2D

var terrain: Array = [1, 3, "asd", 3]
var tileGreen = load("res://assets/tile-green.png")
var tileGray = load("res://assets/tile-gray.png")
var tileSize: int = 32
enum {
	BUSH = 0,
	WALL = 1
}

func _draw():
	draw_terrain()

func draw_terrain():
	var tile
	for i in terrain.size():
		for j in terrain[i].size():
			match terrain[i][j]:
				BUSH:
					tile = tileGreen
				WALL:
					tile = tileGray
			draw_texture(tile, Vector2(tileSize * j, tileSize * i))