class_name Dungeon extends Stage

func _init():
	initTerrain()

func initTerrain()-> void:
	terrain = [
		[BUSH, WALL, BUSH, BUSH],
		[BUSH, WALL, BUSH, BUSH],
		[BUSH, WALL, WALL, WALL],
		[BUSH, BUSH, BUSH, BUSH]
	]