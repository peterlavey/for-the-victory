class_name Game extends Node2D

var Thief = load("res://src/player/thief.gd")
var players: Array
var actions = load("res://src/hud/actions.gd").new()
var stage: Stage = load("res://src/stage/dungeon.gd").new()

func _ready():
	init()

func init()-> void:
	add_stage()
	add_players()
	add_huds()

func add_stage()-> void:
	add_child(stage)

func add_players()-> void:
	var player1 = Thief.new()
	
	player1.id = 1
	player1.nickname = "Peter"
	add_child(player1)
	
	players = get_tree().get_nodes_in_group("players")

#todo: aca hay que pasarle el player que este de turno
func add_huds()-> void:
	add_actions()

func add_actions()-> void:
	actions.player = players[0]
	actions.stage = stage
	add_child(actions)