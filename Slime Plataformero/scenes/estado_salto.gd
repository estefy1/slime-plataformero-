extends Estado


func entrada():
	jugador.velocity.y = -jugador.jump
	jugador.anim.play("idle")


func proceso(_delta):
	if jugador.velocity.y > 0:
		maquina.transicionar("EstadoCayendo")
