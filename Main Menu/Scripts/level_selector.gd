extends Node2D


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 1/Scenes/level_1.tscn")

func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
