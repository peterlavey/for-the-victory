class_name Game extends Node2D

var Player = load("res://src/player/player.gd")
var players: Array
var stage: Stage = load("res://src/stage/dungeon.gd").new()

func _ready():
	print(stage.terrain)
	init()

func init()-> void:
	add_players()
	config_signals()
	players[0].moveUp()

func add_players()-> void:
	var player1 = Player.new()
	
	player1.id = 1
	player1.nickname = "Peter"
	player1.character = load("res://src/player/Thief.tscn")
	
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