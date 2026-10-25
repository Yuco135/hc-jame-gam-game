extends Node2D



func _on_checkpoint_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://Levels/Scenes/win_screen_1.tscn")
		GlobalTimer.stop()
		
		
func _process(delta: float) -> void:
	$CanvasLayer/TimeLabel.text = GlobalTimer.get_current_game_time_string()
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
		GlobalTimer.start_game_timing()

func _ready() -> void:
	GlobalTimer.start_game_timing()
