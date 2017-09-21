extends Node

func _ready():
	get_node("Title").set_text(bingo_info.game + " Bingo")
	get_node("Seed Generator").new_seed()
	populate_card()

func populate_card():
	var bingo_seed = get_node("Seed Generator").get_seed()
	
	print(bingo_seed)
	seed(bingo_seed)
	
	if bingo_info.game == "World of Warcraft":
		for i in range(25):
			get_node("Card/Milestone_" + str(i + 1) + "/Label").set_text(wow_data.milestones.keys()[randi() % wow_data.milestones.size()])
