extends CharacterBody2D

const SPEED: = 60.0
const GRAVITY: = 10.0
const PATROL_DISTANCE: = 100.0

var direccion: = 1.0
var start_position: Vector2

@onready var sprite: = $AnimatedSprite2D

func _ready():
	await get_tree().process_frame
	start_position = global_position
	sprite.play("default")

func _physics_process(_delta):
	if not is_on_floor():
		velocity.y += GRAVITY

	velocity.x = SPEED * direccion

	var distancia = global_position.x - start_position.x
	if distancia > PATROL_DISTANCE and direccion > 0:
		direccion = -1.0
	elif distancia < - PATROL_DISTANCE and direccion < 0:
		direccion = 1.0

	sprite.flip_h = direccion < 0
	move_and_slide()

func _on_hitbox_body_entered(body: Node2D) -> void :
	if body.get_name() == "Player":
		if body.velocity.y > 0:
			queue_free()
			body.velocity.y = -200
		else:
			Global.perder_vida()
