extends Node

var milestones = []

func _ready():
	get_node("Title").set_text(bingo_info.game + " Bingo")
	get_node("Seed Generator").new_seed()
	populate_card()

func populate_card():
	var bingo_seed = get_node("Seed Generator").get_seed()
	
	print(bingo_seed)
	seed(bingo_seed)
	
	milestones = []
	
	while milestones.size() < 25:
		var milestone = ""
		var index = 0
		while milestone == "" or milestones.has(milestone) or curate(milestone, wow_data.milestones):
			if bingo_info.game == "World of Warcraft":
				index = randi() % wow_data.milestones.size()
				milestone = wow_data.milestones.keys()[index]
				print(milestone)
		milestones.append(milestone)
	
	for i in range(25):
		get_node("Card/Milestone_" + str(i + 1) + "/Label").set_text(milestones[i])

func curate(milestone, game_milestones):
	if game_milestones[milestone] == 0:
		return false
	
	# COL CHECK
	for col in range(5):
		for row in range(5):
			var milestone_check =get_node("Card/Milestone_" + str(row * 5 + col + 1) + "/Label").get_text()
			if milestone_check == "Milestone":
				continue
			
			if game_milestones[milestone] == game_milestones[milestone_check]:
				print(milestone + " vs " + milestone_check)
				return true

	return false
