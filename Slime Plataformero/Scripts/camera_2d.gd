extends Camera2D

func _ready():
    top_level = true

func _process(_delta):
    global_position.x = get_parent().global_position.x
    global_position.y = min(get_parent().global_position.y, 170)
