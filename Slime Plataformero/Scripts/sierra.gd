extends Area2D

var velocidad: = 100.0
var distancia: = 80.0
var start_position: Vector2
var direccion: = 1.0

func _ready():
    $Sprite2D.play("default")
    start_position = global_position

func _process(delta):
    global_position.y += velocidad * direccion * delta

    var dist = global_position.y - start_position.y
    if dist > distancia:
        direccion = -1.0
    elif dist < - distancia:
        direccion = 1.0

func _on_body_entered(body: Node2D) -> void :
    if body.get_name() == "Player":
        Global.perder_vida()
