extends Area2D

var Velocidad = 400
var Movimiento = Vector2()
var Touch = false
var P
var m
var s

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
		if global_position.x > P.x:
			Movimiento.x -= 1
		if global_position.x < P.x:
			Movimiento.x += 1
		if global_position.y > P.y:
			Movimiento.y -= 4
		if global_position.y < P.y:
			Movimiento.y += 1
	
	position += Movimiento
