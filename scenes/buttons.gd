extends Node

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Lvl1/Lvl1.tscn")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/Credits.tscn")

func _on_quit_pressed():
	get_tree().quit()
