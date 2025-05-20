extends Node

func _ready():
	var total_points = GameManager.total_points
	var total_time = GameManager.total_time

	$PointsLabel.text = "pontos: " + str(total_points)
	$TimeLabel.text = "TIME: " + GameManager.format_time(total_time)
func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Lvl1/Lvl1.tscn")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/Credits.tscn")
