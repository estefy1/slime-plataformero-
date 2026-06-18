extends Node  # maquina de estado 
class_name MaquinaEstados

@export var estado_inicial: Node

var estado_actual

func _ready():

	for estado in get_children():
		estado.jugador = owner
		estado.maquina = self

	estado_actual = estado_inicial

	if estado_actual:
		estado_actual.entrada()

func _process(delta):

	if estado_actual:
		estado_actual.proceso(delta)

func _physics_process(delta):

	if estado_actual:
		estado_actual.fisica(delta)

func transicionar(nombre_estado : String):

	if estado_actual:
		estado_actual.salida()

	estado_actual = get_node(nombre_estado)

	if estado_actual:
		estado_actual.entrada()
