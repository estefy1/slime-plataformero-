extends Node

@export var estado_inicial: Node

var estado_actual: Node
var estados := {}

@onready var jugador = get_parent()


func _ready():
	call_deferred("iniciar")


func iniciar():
	for hijo in get_children():
		estados[hijo.name] = hijo
		hijo.jugador = jugador
		hijo.maquina = self

	if estado_inicial != null:
		estado_actual = estado_inicial
	else:
		estado_actual = get_child(0)

	estado_actual.entrada()


func _process(delta):
	if estado_actual != null:
		estado_actual.proceso(delta)


func _physics_process(delta):
	if estado_actual != null:
		estado_actual.fisicas(delta)


func transicionar(nombre_estado: String):
	if not estados.has(nombre_estado):
		print("No existe el estado: ", nombre_estado)
		return

	if estado_actual != null:
		estado_actual.salida()

	estado_actual = estados[nombre_estado]
	estado_actual.entrada()
