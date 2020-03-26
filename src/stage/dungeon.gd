class_name Dungeon extends Stage

func _init():
	initTerrain()

func initTerrain()-> void:
	terrain = [
		[0, 1, 0, 0],
		[0, 1, 0, 0],
		[0, 1, 1, 1],
		[0, 0, 0, 0]
	]