extends Node2D

func _on_checkpoint_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://Main Stuff/Scenes/win_screen.tscn")
		
func _process(delta: float) -> void:
	$CanvasLayer/TimeLabel.text = GlobalTimer.get_current_game_time_string()
	
