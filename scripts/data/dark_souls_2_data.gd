extends Node

# Version of game data
var version = "1.0.0"

var milestones = {
	# BONFIRES
	"Light bonfre (Lower Earthen Peak)": 0,
	"Light bonfire (Central Earthen Peak)": 0,
	"Light bonfire (Upper Earthen Peak)": 0,
	
	"Light bonfire (Tower of Prayer)": 0,
	"Light bonfire (Crumbled Ruins)": 0,
	"Light bonfire (Rhoy's Resting Place)": 0,
	"Light bonfire (Rise of the Dead)": 0,
	
	"Light bonfire (Fire Keepers' Dwelling)": 0,

	"Light bonfire (The Crestfallen's Retreat)": 0,
	"Light bonfire (Cardinal Tower)": 0,
	"Light bonfire (Soldier's Rest)": 0,
	"Light bonfire (The Place Unbeknownst)": 0,
	
	"Light bonfire (Threshold Bridge)": 0,
	"Light bonfire (Ironhearth Hall)": 0,
	"Light bonfire (Eygil's Idol)": 0,
	
	"Light bonfire (Undead Crypt Entrance)": 0,
	"Light bonfire (Undead Ditch)": 0,

	"Light bonfire (Belfry Sol Approach)": 0,
	
	"Light bonfire (Foregarden)": 0,
	"Light bonfire (Ritual Site)": 0,

	"Light bonfire (Heide's Ruin)": 0,
	"Light bonfire (Tower of Flame)": 0,
	
	"Light bonfire (Old Akelarre)": 0,
	"Light bonfire (Ruined Fork Road)": 0,
	"Light bonfire (Shaded Ruins)": 0,
	
	"Light bonfire (Dragon Aerie)": 0,

	"Light bonfire (The Blue Catherdral)": 0,
	
	"Light bonfire (Shrine Entrance)": 0,
	
	"Light bonfire (Unseen Path to Heide)": 0,
	
	"Light bonfire (Gyrm's Respite)": 0,
	"Light bonfire (Ordeal's End)": 0,

	"Light bonfire (Exile Holding Cells)": 0,
	"Light bonfire (McDuff's Workshop)": 0,
	"Light bonfire (Servants' Quarters)": 0,
	"Light bonfire (Straid's Cell)": 0,
	"Light bonfire (The Tower Apart)": 0,
	
	"Light bonfire (Sanctum Walk)": 0,
	"Light bonfire (Tower of Prayer)": 0,
	"Light bonfire (Priestess' Chamber)": 0,

	"Light bonfire (Hidden Sanctum Chamber)": 0,
	"Light bonfire (Lair of the Imperfect)": 0,
	"Light bonfire (Sanctum Interior)": 0,
	
	"Light bonfire (Royal Army Campsite)": 0,
	"Light bonfire (Chapel Threshold)": 0,
	"Light bonfire (Lower Brightstone Cove)": 0,

	"Light bonfire (Harval's Resting Place)": 0,
	"Light bonfire (Grave Entrance)": 0,
	
	"Light bonfire (The Saltfort)": 0,
	
	"Light bonfire (Sanctum Nadir)": 0,

	"Light bonfire (Upper Ramparts)": 0,
	
	"Light bonfire (Upper Gutter)": 0,
	"Light bonfire (Central Gutter)": 0,
	
	"Light bonfire (Throne Floor)": 0,
	"Light bonfire (Upper Floor)": 0,
	"Light bonfire (Foyer)": 0,
	"Light bonfire (Lowermost Floor)": 0,
	"Light bonfire (Smelter Throne)": 0,
	
	"Light bonfire (Undead Refuge)": 0,
	"Light bonfire (Bridge Approach)": 0,
	"Light bonfire (Undead Lockaway)": 0,
	
	"Light bonfire (Black Gulch Mouth)": 0,
	"Light bonfire (Hidden Chamber)": 0,

	"Light bonfire (Iron Hallway Entrance)": 0,
	
	"Light bonfire (Undead Purgatory)": 0,
	
	"Light bonfire (King's Gate)": 0,
	"Light bonfire (Under Castle Drangleic)": 0,
	"Light bonfire (Forgotten Chamber)": 0,
	"Light bonfire (Central Castle Drangleic)": 0,

	"Light bonfire (Poison Pool)": 0,
	"Light bonfire (The Mines)": 0,

	"Light bonfire (Outer Wall)": 0,
	"Light bonfire (Abandoned Dwelling)": 0,
	"Light bonfire (Expulsion Chamber)": 0,
	"Light bonfire (Inner Wall)": 0,
	"Light bonfire (Lower Garrison)": 0,

	"Light bonfire (Grand Cathedral)": 0,
}

# Dark Souls 2 Classes
var ds2_classes = [
	"Bandit",
	"Cleric",
	"Deprived",
	"Explorer",
	"Knight",
	"Sorcerer",
	"Swordsman",
	"Warrior"
]

# Dark Souls 2 Gifts
var ds2_gifts = [
	"Bonfire Ascetic",
	"Petrified Something",
	"Seed of a Tree of Giants",
	"Homeward Bone",
	"Healing Wares",
	"Human Effigy",
	"Life Ring",
]

# Return game specfic info for info label
func info():
	randomize()
	
	var current_class = ds2_classes[randi() % ds2_classes.size()]
	var current_gift = ds2_gifts[randi() % ds2_gifts.size()]
	var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"
	
	return txt
