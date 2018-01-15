extends Control

var bingo_seed = 0

func _ready():
	pass

func _on_Generate_Button_pressed():
	if get_node("Seed Editbox").get_text().empty():
		new_seed()
	else:
		bingo_seed = int(get_node("Seed Editbox").get_text())
	
	_on_Reset_Button_pressed()
	get_node("../.").populate_card()

func _on_Reset_Button_pressed():
	for i in range(25):
		get_node(str("../Card/Milestone_", i + 1)).set_pressed(false)

func new_seed():
	randomize()
	bingo_seed = randi() % 999999 + 1

func get_seed():
	return bingo_seed
