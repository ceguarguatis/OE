extends Area2D

var Velocidad = 400
var Movimiento = Vector2()
var Touch = false
var P
var L = 50

func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed == true:
			Touch = true
			P = event.position
		else:
			Touch = false

func _ready():
	pass # Replace with function body.

func _process(delta):
	Movimiento = Vector2()
	if Touch:
		if abs(global_position.x - P.x) > L:
			if global_position.x > P.x:
				Movimiento.x -= 1
			else:
				Movimiento.x += 1
		if abs(global_position.y - P.y) > L:	
			if global_position.y > P.y:
				Movimiento.y -= 1
			else:
				Movimiento.y += 1
	if Movimiento.length() > 0:
		Movimiento = Movimiento.normalized() * Velocidad
	position += Movimiento * delta
