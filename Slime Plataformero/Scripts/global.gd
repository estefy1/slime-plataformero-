extends Node

var moneda: = 0:
    set(val):
        moneda = val
        if player != null:
            player.actualizaInterfazMoneda()
    get:
        return moneda

var vidas: = 3:
    set(val):
        vidas = val
        if player != null:
            player.actualizaInterfazVidas()
    get:
        return vidas

var player

func resetear():
    moneda = 0

func perder_vida():
    vidas -= 1
    if vidas <= 0:
        get_tree().change_scene_to_file.call_deferred("res://scenes/game_over.tscn")
    else:
        moneda = 0
        get_tree().reload_current_scene.call_deferred()
