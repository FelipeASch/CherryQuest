extends Node

var current_points := 0
var total_points := 0

var elapsed_time := 0.0
var total_time := 0.0

var points_label: Label = null
var time_label: Label = null

func _ready():
	set_process(false)

func start_level(points_label_node: Label, time_label_node: Label):
	points_label = points_label_node
	time_label = time_label_node

	current_points = 0
	elapsed_time = 0.0

	update_points_label()
	update_time_label()

	set_process(true)

func end_level():
	total_points += current_points
	total_time += elapsed_time
	set_process(false)

func add_points():
	current_points += 100
	update_points_label()

func update_points_label():
	if points_label:
		points_label.text = "Points: " + str(current_points)

func update_time_label():
	if time_label:
		time_label.text = "Time: " + format_time(elapsed_time)

func _process(delta):
	elapsed_time += delta
	update_time_label()

func format_time(seconds: float) -> String:
	var secs = int(seconds)
	var millis = int((seconds - secs) * 1000)
	return "%02d:%03d" % [secs, millis]
