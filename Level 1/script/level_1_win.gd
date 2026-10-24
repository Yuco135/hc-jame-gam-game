extends Node2D
const ClassName := preload("res://Level 1/Scenes/timer.gd")

func _on_checkpoint_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Main Stuff/Scenes/win_screen.tscn")
	
	
