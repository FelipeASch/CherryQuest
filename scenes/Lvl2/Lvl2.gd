extends Node

func _ready():
	var points_label = $UI/Panel/PointsLabel
	var time_label = $UI/Panel2/TimeLabel
	GameManager.start_level(points_label, time_label)
