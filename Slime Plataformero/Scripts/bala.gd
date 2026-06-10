extends Area2D

var velocidad: = 100
var direccion: = Vector2.LEFT
var tiempo_vida: = 3.0

func _ready():
	$CollisionShape2D
	get_tree().create_timer(tiempo_vida).timeout.connect(queue_free)

func _process(delta):
	position += direccion * velocidad * delta

func _on_body_entered(body: Node2D) -> void :
	if body.get_name() == "Player":
		Global.perder_vida()
	queue_free()
