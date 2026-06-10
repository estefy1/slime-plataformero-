extends Control

func _ready():
    Global.vidas = 3
    Global.moneda = 0

func _on_volver_a_jugar_pressed():
    get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_menu_principal_pressed():
    get_tree().change_scene_to_file("res://scenes/menu.tscn")
