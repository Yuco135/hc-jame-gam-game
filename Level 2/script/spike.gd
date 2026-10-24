extends Sprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Level 2/Scenes/lose_screen_lv_2.tscn")
