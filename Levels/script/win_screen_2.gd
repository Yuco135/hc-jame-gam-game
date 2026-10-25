extends Control


func _on_again_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/Level 2.tscn")


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Scenes/main_menu.tscn")
	
func _process(delta: float) -> void:
	$CanvasLayer/FinalTime.text = GlobalTimer.get_current_game_time_string()
	set_process(false) 


func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/level_3.tscn")
