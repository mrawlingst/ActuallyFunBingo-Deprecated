extends Control

var bingo_seed = 0

func _ready():
	pass

func _on_Generate_Button_pressed():
	randomize()
	if get_node("Seed Editbox").get_text().empty():
		bingo_seed = randi() % 999999 + 1
	else:
		bingo_seed = int(get_node("Seed Editbox").get_text())

func _on_Reset_Button_pressed():
	for i in range(25):
		get_node(str("../Card/Milestone_", i + 1)).set_pressed(false)

func get_seed():
	return bingo_seed
