extends Area2D


func _on_body_entered(body) -> void:
	if body.name == "level_2_player":
		body.game_over()
