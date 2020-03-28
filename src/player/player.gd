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
enum {UP, RIGHT, DOWN, LEFT}
enum {WARRIOR, WIZARD}

signal set_position

func _ready():
	add_to_group("players")

func move_up():
	move(UP)

#todo: SPEED * ALGUN BUFF QUE TENGA EN DECIMALES PARA SIMULAR PORCENTAJE
func move(direction):
	var currentPosition: Vector2 = position
	match direction:
		UP:
			currentPosition.y += speed
		RIGHT:
			currentPosition.x += speed
		DOWN:
			currentPosition.y -= speed
		LEFT:
			currentPosition.x -= speed
	emit_signal("set_position", currentPosition)

func _draw():
	set_texture()

func set_texture()-> void:
	draw_texture(texture, currentPosition)