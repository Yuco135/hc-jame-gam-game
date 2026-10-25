extends Control

func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/level_1.tscn")
	
func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Scenes/level_1.tscn")
	

func _process(delta: float) -> void:
	$CanvasLayer/Time.text = GlobalTimer.get_current_game_time_string()
	set_process(false) 
