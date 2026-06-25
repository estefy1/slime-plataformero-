extends Control

<<<<<<< HEAD
func _on_start_game_button_pressed() -> void :
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_quit_button_2_pressed() -> void :
=======
func _on_start_game_button_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_quit_button_2_pressed():
>>>>>>> 355c41bda5b2c4c53347bf2edffb48d2b4407d71
	get_tree().quit()
