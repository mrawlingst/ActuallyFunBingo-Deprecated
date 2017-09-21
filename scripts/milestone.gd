extends TextureButton

export var completed_color = Color(.4, 1, .4)

var completed = false
var incompleted_color = Color(1, 1, 1)

func _on_Milestone_pressed():
	completed = !completed
	update_status()

func update_status():
	if completed:
		set_modulate(completed_color)
	else:
		set_modulate(incompleted_color)
