extends TextureButton

func _on_BLTR_mouse_enter():
	for i in range(5):
		get_node("../Milestone_" + str((5 - i) + (i * 5))).set_modulate(Color(.8, .8, .8))

func _on_BLTR_mouse_exit():
	for i in range(5):
		get_node("../Milestone_" + str((5 - i) + (i * 5))).set_modulate(Color(1, 1, 1))
