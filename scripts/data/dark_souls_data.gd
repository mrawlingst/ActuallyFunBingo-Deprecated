extends Node

# Version of game data
var version = "1.0.0"

var milestones = {
	# Non-exclusive
	"Milestone 1": 0,
	"Milestone 2": 0,
	"Milestone 3": 0,
	"Milestone 4": 0,
	"Milestone 5": 0,
	"Milestone 6": 0,
	"Milestone 7": 0,
	"Milestone 8": 0,
	"Milestone 9": 0,
	"Milestone 10": 0,
	"Milestone 11": 0,
	"Milestone 12": 0,
	"Milestone 13": 0,
	"Milestone 14": 0,
	"Milestone 15": 0,
	"Milestone 16": 0,
	"Milestone 17": 0,
	"Milestone 18": 0,
	"Milestone 19": 0,
	"Milestone 20": 0,
	"Milestone 21": 0,
	"Milestone 21awd": 0,
	"Milestone 21ab": 0,
	"Milestone 21avae": 0,
	"Milestone 21ad": 0,
	"Milestone 213": 0,
	"Milestone 212512": 0,
	"Milestone 2151": 0,
	"Milestone 2112": 0,

	# Exclusive Group 1
	"Milestone 22": 1,
	"Milestone 23": 1,

	# Exclusive Group 2
	"Milestone 24": 2,
	"Milestone 25": 2,
}

# Dark Souls Classes
var ds_classes = [
	"Bandit",
	"Cleric",
	"Deprived",
	"Hunter",
	"Knight",
	"Pyromancer",
	"Sorcerer",
	"Thief",
	"Wanderer",
	"Warrior"
]

# Dark Souls Gifts
var ds_gifts = [
	"Binoculars",
	"Black Firebomb",
	"Divine Blessing",
	"Master Key",
	"Old Witch's Ring",
	"Pendant",
	"Tiny Being's Ring",
	"Twin Humanities"
]

# Return game specfic info for info label
func info():
	randomize()
	
	var current_class = ds_classes[randi() % ds_classes.size()]
	var current_gift = ds_gifts[randi() % ds_gifts.size()]
	var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"
	
	return txt
