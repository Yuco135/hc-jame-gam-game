extends Sprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://Main Stuff/Scenes/lose_screen.tscn")
