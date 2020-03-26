class_name Player extends Node

var strength: int
var speed: int = 1
#var dexterity: int
#var defense: int
#var mana: int
var healthPoints: int
#var visionRange: int
#var luck: int
var position: Vector2 = Vector2(0, 0)

export var id: int = 0
export var nickname: String = ""
export var character: PackedScene
var sprite:AnimatedSprite = AnimatedSprite.new()
enum {UP, RIGHT, DOWN, LEFT}

signal set_position

func _ready():
	set_texture()
	add_to_group("players")

func moveUp():
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

func set_texture():
	sprite = character.instance()
	add_child(sprite)