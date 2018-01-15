extends Node

# Version of game data
var version = "1.0.0"

var milestones = {
    # BONFIRES
    "Light bonfire (Firelink Shrine)": 0,
    "Light bonfire (Cemetery of Ash)": 0,
    "Light bonfire (Iudex Gundyr)": 0,
    "Light bonfire (Untended Graves)": 0,
    "Light bonfire (Champion Gundyr)": 0,
    "Light bonfire  (High Wall of Lothric)": 0,
    "Light bonfire (Tower on the Wall)": 0,
    "Light bonfire (Vordt of the Boreal Valley)": 0,
    "Light bonfire (Dancer of the Boreal Valley)": 0,
    "Light bonfire (Oceiros, the Consumed King)": 0,
    "Light bonfire   (Foot of the High Wall)": 0,
    "Light bonfire (Undead Settlement)": 0,
    "Light bonfire    (Cliff Underside)": 0,
    "Light bonfire (Dilapidated Bridge)": 0,
    "Light bonfire      (Pit of Hollows)": 0,
    "Light bonfire  (Road of Sacrifices)": 0,
    "Light bonfire (Halfway Fortress)": 0,
    "Light bonfire (Crucifixion Woods)": 0,
    "Light bonfire (Crystal Sage)": 0,
    "Light bonfire (Farron Keep)": 0,
    "Light bonfire (Keep Ruins)": 0,
    "Light bonfire (Farron Keep Perimeter)": 0,
    "Light bonfire     (Old Wolf of Farron)": 0,
    "Light bonfire (Abyss Watchers)": 0,
    "Light bonfire (Cathedral of the Deep)": 0,
    "Light bonfire (Cleansing Chapel)": 0,
    "Light bonfire (Deacons of the Deep)": 0,
    "Light bonfire (Rosaria's Bed Chamber)": 0,
    "Light bonfire (Catacombs of Carthus)": 0,
    "Light bonfire  (High Lord Wolnir)": 0,
    "Light bonfire (Abandoned Tomb)": 0,
    "Light bonfire     (Old King's Antechamber)": 0,
    "Light bonfire (Demon Ruins)": 0,
    "Light bonfire     (Old Demon King)": 0,
    "Light bonfire (Irithyll of the Boreal Valley)": 0,
    "Light bonfire (Central Irithyll)": 0,
    "Light bonfire (Church of Yorkshire)": 0,
    "Light bonfire (Distant Manor)": 0,
    "Light bonfire (Pontiff Sulyvahn)": 0,
    "Light bonfire (Water Reserve)": 0,
    "Light bonfire  (Anor Londo)": 0,
    "Light bonfire (Prison Tower)": 0,
    "Light bonfire (Aldrich, Devourer of Gods)": 0,
    "Light bonfire (Irithyll Dungeon)": 0,
    "Light bonfire (Profaned Captial)": 0,
    "Light bonfire (Yhorm the Giant)": 0,
    "Light bonfire (Lothric Castle)": 0,
    "Light bonfire (Dragon Barracks)": 0,
    "Light bonfire (Dragonslayer Armour)": 0,
    "Light bonfire (Grand Archives)": 0,
    "Light bonfire  (Twin Princes)": 0,
    "Light bonfire (Archdragon Peak)": 0,
    "Light bonfire (Dragon-Kin Mausoleum)": 0,
    "Light bonfire (Great Belfry)": 0,
    "Light bonfire (Nameless King)": 0,
    "Light bonfire (Flameless Shrine)": 0,
    "Light bonfire    (Kiln of the First Flame)": 0,
    "Light bonfire    (The First Flame)": 0,
}

# Dark Souls 3 Classes
var ds3_classes = [
    "Knight",
    "Mercenary",
    "Warrior",
    "Herald",
    "Thief",
    "Assassin",
    "Sorcerer",
    "Pyromancer",
    "Cleric",
    "Deprived"
]

# Dark Souls 3 Gifts
var ds3_gifts = [
    "Life Ring",
    "Divine Blessing",
    "Hidden Blessing",
    "Black Firebomb x 5",
    "Fire Gem",
    "Sovereignless Soul",
    "Rusted Gold Coin x 7",
    "Cracked Red Eye Orb x 4",
    "Young White Branch"
]

# Return game specfic info for info label
func info():
	randomize()
	
	var current_class = ds3_classes[randi() % ds3_classes.size()]
	var current_gift = ds3_gifts[randi() % ds3_gifts.size()]
	var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"
	
	return txt
