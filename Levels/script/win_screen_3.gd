extends Control

func _on_next_pressed() -> void:
	var number = 2


func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/level_3.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
