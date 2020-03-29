class_name Thief extends Player

func _init():
	set_images()
	set_initial_stats()

func set_images()-> void:
	texture = load("res://assets/token.png")

func set_initial_stats()-> void:
	strength = 3
	speed = 1
	healthPoints = 150