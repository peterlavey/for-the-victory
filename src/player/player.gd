class_name Player extends Node2D

var strength: int
var speed: int = 1
#var dexterity: int
#var defense: int
#var mana: int
var healthPoints: int
#var visionRange: int
#var luck: int
var currentPosition: Vector2 = Vector2(0, 0)
var texture

export var id: int = 0
export var nickname: String = ""
enum {WARRIOR, WIZARD}

func _ready():
	add_to_group("players")

func _draw():
	set_texture()

func set_texture()-> void:
	draw_texture(texture, currentPosition)