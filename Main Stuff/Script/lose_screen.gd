extends Control

func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/level_1.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
