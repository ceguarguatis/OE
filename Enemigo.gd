extends RigidBody2D

var Velocidad_Min = 150
var Velocidad_Max = 250
var Tipo_Bola = ["BolaG","BolaP"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.animation = Tipo_Bola [randi() % Tipo_Bola.size()]
	if $AnimatedSprite.animation == "BolaG" :
		$CollisionShape2D.scale.x = 1.8
		$CollisionShape2D.scale.y = 1.8



func _on_Visibilidad_screen_exited():
	queue_free()
