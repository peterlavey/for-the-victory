extends Node

var world:Node
var game = load("res://src/game/game.gd").new()

func _ready():
	config_world()

func config_world()-> void:
	world = Node.new()
	add_child(world)
	
	init_game()

func init_game()-> void:
	#game.stage = currentStage
	#world.remove_child(stageSelect)
	world.add_child(game)