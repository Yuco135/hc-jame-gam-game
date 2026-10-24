extends Node2D


func _on_checkpoint_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level 2/Scenes/win_screen_lv_2.tscn")
