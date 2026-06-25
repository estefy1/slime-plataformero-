extends Area2D

func _ready():
	$Portal.play("default")

func _on_body_entered(body: Node2D) -> void :
	if body.get_name() == "Player":
		get_tree().change_scene_to_file("res://scenes/victoria.tscn")
