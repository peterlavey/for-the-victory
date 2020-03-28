class_name Dungeon extends Stage

func _init():
	init_terrain()

func init_terrain()-> void:
	terrain = [
		[BUSH, WALL, BUSH, BUSH],
		[BUSH, WALL, BUSH, BUSH],
		[BUSH, WALL, WALL, WALL],
		[BUSH, BUSH, BUSH, BUSH]
	]