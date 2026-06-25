extends CharacterBody2D
class_name Player

var speed := 110
var direccion := 0.0
var jump := 220
const gravity := 10

@onready var anim := $AnimationPlayer
@onready var sprite := $Sprite2D
@onready var monedalabel := $PlayerGUI/HBoxContainer/monedaLabel
@onready var corazon1 := $PlayerGUI/HBoxContainer/corazon1
@onready var corazon2 := $PlayerGUI/HBoxContainer/corazon2
@onready var corazon3 := $PlayerGUI/HBoxContainer/corazon3


func _ready():
	Global.player = self
	actualizaInterfazVidas()
<<<<<<< HEAD
	actualizaInterfazMoneda()


func _physics_process(_delta):
	direccion = Input.get_axis("ui_left", "ui_right")

	velocity.x = direccion * speed

	if direccion != 0:
		sprite.flip_h = direccion > 0

	if not is_on_floor():
		velocity.y += gravity

	move_and_slide()


func actualizaInterfazMoneda():
	monedalabel.text = str(Global.moneda)

=======

func _physics_process(_delta):
	direccion = Input.get_axis("ui_left", "ui_right")
	velocity.x = direccion * speed
	anim.play("idle")
	sprite.flip_h = direccion > 0 if direccion != 0 else sprite.flip_h
	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		velocity.y -= jump
	if !is_on_floor():
		velocity.y += gravity
	move_and_slide()

func actualizaInterfazMoneda():
	monedalabel.text = str(Global.moneda)
>>>>>>> 355c41bda5b2c4c53347bf2edffb48d2b4407d71

func actualizaInterfazVidas():
	corazon1.visible = Global.vidas >= 1
	corazon2.visible = Global.vidas >= 2
	corazon3.visible = Global.vidas >= 3
