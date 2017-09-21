extends Node

func _ready():
	get_node("Title").set_text(bingo_info.game + " Bingo")
