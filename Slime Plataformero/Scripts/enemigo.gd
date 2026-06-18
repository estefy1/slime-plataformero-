extends CharacterBody2D

const enemigoRESET: int = 50
const gravity = 20

func _ready():
	velocity.x = - enemigoRESET
	$AnimationPlayer.play("RESET")

func _physics_process(_delta):
	velocity.y += gravity


	if is_on_wall():
		velocity.x = - velocity.x


	if velocity.x < 0:
		$Sprite2D.flip_h = false
	else:
		$Sprite2D.flip_h = true

	move_and_slide()
