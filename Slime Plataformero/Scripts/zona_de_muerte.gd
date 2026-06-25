extends Area2D

func _on_body_entered(body: Node2D) -> void :
	print(body.get_name())
	if body.get_name() == "Player":
		print("AHHHHHHHHHHHHH")
		Global.perder_vida()
