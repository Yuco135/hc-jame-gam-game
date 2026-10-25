extends Control

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")


func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/Level 2.tscn")
