class_name Actions extends Node

var player
enum {UP, RIGHT, DOWN, LEFT}
var tileSize = 32

func _input(event):
	if Input.is_action_pressed("ui_up"):
		move_up()
	elif Input.is_action_pressed("ui_right"):
		move_right()
	elif Input.is_action_pressed("ui_down"):
		move_down()
	elif Input.is_action_pressed("ui_left"):
		move_left()

func move_up():
	move(UP)

func move_right():
	move(RIGHT)

func move_down():
	move(DOWN)

func move_left():
	move(LEFT)

#todo: SPEED * ALGUN BUFF QUE TENGA EN DECIMALES PARA SIMULAR PORCENTAJE
func move(direction):
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
	player.position = currentPosition