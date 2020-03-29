class_name Actions extends Node

var player
var stage
enum {UP, RIGHT, DOWN, LEFT}
var tileSize = 32
const OUT_OF_INDEX = 99

func _input(event)-> void:
	if Input.is_action_pressed("ui_up"):
		move_up()
	elif Input.is_action_pressed("ui_right"):
		move_right()
	elif Input.is_action_pressed("ui_down"):
		move_down()
	elif Input.is_action_pressed("ui_left"):
		move_left()

func move_up()-> void:
	move(UP)

func move_right()-> void:
	move(RIGHT)

func move_down()-> void:
	move(DOWN)

func move_left()-> void:
	move(LEFT)

#todo: SPEED * ALGUN BUFF QUE TENGA EN DECIMALES PARA SIMULAR PORCENTAJE
func move(direction)-> void:
	var currentPosition: Vector2 = player.position

	match direction:
		UP:
			currentPosition.y -= player.speed * tileSize
		RIGHT:
			currentPosition.x += player.speed * tileSize
		DOWN:
			currentPosition.y += player.speed * tileSize
		LEFT:
			currentPosition.x -= player.speed * tileSize

	if(validate_move(currentPosition)):
		player.position = currentPosition

func validate_move(position)-> bool:
	var tileCode = get_tile_code(position)
	return tileCode != OUT_OF_INDEX && tileCode != 1

func get_tile_code(position)-> int:
	var y = position.y / tileSize
	var x = position.x / tileSize
	var maxY = stage.terrain.size() - 1
	var maxX = stage.terrain[0].size() - 1
	
	if y <= maxY && x <= maxX:
		return stage.terrain[y][x]
	else:
		return OUT_OF_INDEX