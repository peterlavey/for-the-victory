class_name Thief extends Player

func _init():
	set_images()
	set_initial_stats()

func set_images()-> void:
	texture = load("res://assets/token.png")

func set_initial_stats()-> void:
	strength = 3
	speed = 2
	healthPoints = 150