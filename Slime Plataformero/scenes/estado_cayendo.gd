extends Estado


func entrada():
	jugador.anim.play("idle")


func proceso(_delta):
	if jugador.is_on_floor():
		maquina.transicionar("EstadoNormal")
