extends TextureButton

export var row_num = 0

func _ready():
	get_node("Label").set_text("ROW " + str(row_num))

func _on_Row_mouse_enter():
	for i in range(5):
		get_node("../Milestone_" + str((i + 1) + 5 * (row_num - 1))).set_modulate(Color(.8, .8, .8))

func _on_Row_mouse_exit():
	for i in range(5):
		get_node("../Milestone_" + str((i + 1) + 5 * (row_num - 1))).set_modulate(Color(1, 1, 1))
