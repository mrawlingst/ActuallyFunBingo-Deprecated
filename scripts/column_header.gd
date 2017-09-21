extends TextureButton

export var col_num = 0

func _ready():
	get_node("Label").set_text("COL " + str(col_num))

func _on_Column_mouse_enter():
	for i in range(5):
		get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(.8, .8, .8))

func _on_Column_mouse_exit():
	for i in range(5):
		get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(1, 1, 1))
