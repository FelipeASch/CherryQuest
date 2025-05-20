extends Area2D

@export var target_level : PackedScene
@export var is_last_level := false

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		GameManager.end_level()
		if is_last_level:
			get_tree().change_scene_to_file("res://scenes/score.tscn")
		else:
			get_tree().change_scene_to_packed(target_level)
