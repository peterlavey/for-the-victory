class_name Game extends Node2D

var Thief = load("res://src/player/thief.gd")
var players: Array
var stage: Stage = load("res://src/stage/dungeon.gd").new()

func _ready():
	print(stage.terrain)
	init()

func init()-> void:
	add_stage()
	add_players()
	config_signals()

func add_stage()-> void:
	add_child(stage)

func add_players()-> void:
	var player1 = Thief.new()
	
	player1.id = 1
	player1.nickname = "Peter"
	print(player1.strength)
	print(player1.speed)
	print(player1.healthPoints)
	add_child(player1)
	
	players = get_tree().get_nodes_in_group("players")

func config_signals()-> void:
	for player in players:
		player.connect("set_position", self, "set_position")

func set_position(position):
	print("emited")
	if stage.terrain[position.y][position.x] == 0:
		players[0].position = position
		print(players[0].position)