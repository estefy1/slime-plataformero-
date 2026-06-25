extends Estado


func entrada():
	jugador.anim.play("idle")


func proceso(_delta):
	if not jugador.is_on_floor():
		maquina.transicionar("EstadoCayendo")
		return

	if Input.is_action_just_pressed("ui_accept") and jugador.is_on_floor():
		maquina.transicionar("EstadoSalto")
		return

	if jugador.direccion != 0:
		jugador.anim.play("idle")
	else:
		jugador.anim.play("idle")
