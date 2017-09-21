extends TextureButton

export var col_num = 0

func _ready():
	get_node("Label").set_text("COL " + str(col_num))
