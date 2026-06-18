extends CanvasLayer

func _ready():
	await get_tree().create_timer(4.0).timeout
	queue_free()
