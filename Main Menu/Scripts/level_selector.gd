extends Node2D


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 1/Scene/level_1_collect.tscn")

func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 2/Scenes/level_2_chase.tscn")

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
