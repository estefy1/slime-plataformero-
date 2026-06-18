extends StaticBody2D

@onready var timer: = $Timer
@onready var sprite: = $Sprite2D
var bala_scene = preload("res://scenes/bala.tscn")

func _ready():
	sprite.play("default")
	timer.wait_time = 2.0
	timer.start()
	timer.timeout.connect(_disparar)

func _disparar():
	var bala = bala_scene.instantiate()
	get_parent().add_child(bala)
	bala.global_position = global_position + Vector2(-20, 0)
