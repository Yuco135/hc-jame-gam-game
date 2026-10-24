extends Node2D


func _on_checkpoint_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Main Stuff/Scenes/win_screen.tscn")
