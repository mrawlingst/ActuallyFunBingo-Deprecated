extends TextureButton

export var row_num = 0

func _ready():
	get_node("Label").set_text("ROW " + str(row_num))
