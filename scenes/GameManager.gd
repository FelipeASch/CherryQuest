extends Node

@onready var points_label = %PointsLabel

var points = 0

func addPoints():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points)
