extends Area2D

var activo: = true

func _ready():
	$Sprite2D.play("default")
	$Sprite2D.animation_finished.connect(_on_animation_finished)

func _on_animation_finished():
	activo = !activo
	$CollisionShape2D.disabled = !activo

func _on_body_entered(body: Node2D) -> void :
	if body.get_name() == "Player" and activo:
		Global.perder_vida()
