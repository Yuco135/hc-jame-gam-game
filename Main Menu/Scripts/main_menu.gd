extends Node2D

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Levels/Scenes/level_1.tscn")

func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/level_selector.tscn")

func _on_quit_pressed():
	get_tree().quit()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/credits.tscn")
