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
	"Light bonfire    (Rise of the Dead)": 0,
	"Light bonfire    (Fire Keepers' Dwelling)": 0,
	"Light bonfire     (The Crestfallen's Retreat)": 0,
	"Light bonfire (Cardinal Tower)": 0,
	"Light bonfire (Soldier's Rest)": 0,
	"Light bonfire     (The Place Unbeknownst)": 0,
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
	"Light bonfire     (Old Akelarre)": 0,
	"Light bonfire (Ruined Fork Road)": 0,
	"Light bonfire (Shaded Ruins)": 0,
	"Light bonfire (Dragon Aerie)": 0,
	"Light bonfire     (The Blue Catherdral)": 0,
	"Light bonfire (Shrine Entrance)": 0,
	"Light bonfire (Unseen Path to Heide)": 0,
	"Light bonfire (Gyrm's Respite)": 0,
	"Light bonfire (Ordeal's End)": 0,
	"Light bonfire  (Exile Holding Cells)": 0,
	"Light bonfire (McDuff's Workshop)": 0,
	"Light bonfire (Servants' Quarters)": 0,
	"Light bonfire (Straid's Cell)": 0,
	"Light bonfire     (The Tower Apart)": 0,
	"Light bonfire (Sanctum Walk)": 0,
	"Light bonfire (Tower of Prayer)": 0,
	"Light bonfire (Priestess' Chamber)": 0,
	"Light bonfire (Hidden Sanctum Chamber)": 0,
	"Light bonfire    (Lair of the Imperfect)": 0,
	"Light bonfire (Sanctum Interior)": 0,
	"Light bonfire (Royal Army Campsite)": 0,
	"Light bonfire (Chapel Threshold)": 0,
	"Light bonfire (Lower Brightstone Cove)": 0,
	"Light bonfire (Harval's Resting Place)": 0,
	"Light bonfire (Grave Entrance)": 0,
	"Light bonfire     (The Saltfort)": 0,
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
	"Light bonfire  (Iron Hallway Entrance)": 0,
	"Light bonfire (Undead Purgatory)": 0,
	"Light bonfire (King's Gate)": 0,
	"Light bonfire (Under Castle Drangleic)": 0,
	"Light bonfire (Forgotten Chamber)": 0,
	"Light bonfire (Central Castle Drangleic)": 0,
	"Light bonfire (Poison Pool)": 0,
	"Light bonfire     (The Mines)": 0,
	"Light bonfire (Outer Wall)": 0,
	"Light bonfire (Abandoned Dwelling)": 0,
	"Light bonfire (Expulsion Chamber)": 0,
	"Light bonfire (Inner Wall)": 0,
	"Light bonfire (Lower Garrison)": 0,
	"Light bonfire (Grand Cathedral)": 0,

	# COVENANTS - 1
	# "Join Bell Keepers": 1,
	# "Join Blue Sentinels": 1,
	# "Join Brotherhood of Blood": 1,
	# "Join Rat King Covenant": 1,
	# "Join Dragon Remnants": 1,
	# "Join Way of Blue": 1,
	# "Join Pilgrims of Dark": 1,
	# "Join Heirs of the Sun": 1,

	# # ATTRIBUTES - 2
	# "36 Vigor": 2,
	# "36 Endurance": 2,
	# "36 Vitality": 2,
	# "36 Attunement": 2,
	# "36 Strength": 2,
	# "36 Dexterity": 2,
	# "36 Adaptability": 2,
	# "36 Intelligence": 2,
	# "36 Faith": 2,

	# # MYTHA, THE BANEFUL QUEEN - 3
	# "Mytha, The Baneful Queen Soul": 3,
	# "Mytha's Bent Blade": 3,

	# # SMELTER DEMON - 4
	# "Smelter Demon Soul": 4,
	# "Smelter Sword": 4,
	# "Aged Smelter Sword": 4,
	
	# # PURSUER - 5
	# "Soul of the Pursuer": 5,
	# "Pursuer's Ultra Greatsword": 5,
	# "Pursuer's Greatshield": 5,
	
	# # FLEXILE SENTRY - 6
	# "Flexile Sentry Soul": 6,
	# "Warped Sword": 6,
	# "Arced Sword": 6,
	# "Barbed Club": 6,

	# # LAST GIANT - 7
	# "Soul of the Last Giant": 7,
	# "Giant Stone Axe": 7,

	# # BELFRY GARGOYLE - 8
	# "Belfry Gargoyle Soul": 8,
	# "Gargoyle Bident": 8,

	# # DRAGONRIDER - 9
	# "Dragonrider Soul": 9,
	# "Dragonrider's Halberd": 9,
	# "Dragonrider Twinblade": 9,
	# "Dragonrider Bow": 9,
	# "Dragonrider Greatshield": 9,

	# # SKELETON LORD - 10
	# "Skeleton Lord's Soul": 10,
	# "Roaring Halberd": 10,

	# # COVETOUS DEMON - 11
	# "Covetous Demon Soul": 11,
	# "Bone Scythe": 11,
	
	# # EXECUTIONER'S CHARIOT - 12
	# "Executioner's Chariot Soul": 12,
	# "Chariot Lance": 12,
	# "Shield Crossbow": 12,

	# # DEMON OF SONG - 13
	# "Demon of Song Soul": 13,
	# "Spotted Whip": 13,

	# # RUIN SENTINEL - 14
	# "Ruin Sentinel Soul": 14,
	# "Heavy Homing Soul Arrow (S)": 14,

	# # SCORPIONESS NAJKA - 15
	# "Scorpioness Najka Soul": 15,
	# "Soul Shower (S)": 15,

	# # VELSTADT - 16
	# "Soul of Velstadt": 16,
	# "Sacred Oath (M)": 16,
	# "Sacred Chime Hammer": 16,

	# # ROYAL RAT VANGUARD - 17
	# "Royal Rat Vanguard Soul": 17,
	# "Toxic Mist (P)": 17,

	# # ROYAL RAT AUTHORITY - 18
	# "Royal Rat Authority Soul": 18,
	# "Acid Surge (P)": 18,

	# # GIANT LORD - 19
	# "Giant Lord Soul": 19,
	# "Repel (H)": 19,

	# # OLD WITCH - 20
	# "Old Witch Soul": 20,
	# "Flame Weapon (P)": 20,
	# "Chaos Blade": 20,

	# # OLD PALEDRAKE - 21
	# "Old Paledrake Soul": 21,
	# "Crystal Soul Spear (S)": 21,
	# "Moonlight Greatsword": 21,

	# # OLD KING - 22
	# "Old King Soul": 22,
	# "Blinding Bolt (M)": 22,
	# "Dragonslayer Greatbow": 22,
	
	# # OLD DEAD ONE - 23
	# "Old Dead One Soul": 23,
	# "Numbness (H)": 23,
	# "Crypt Blacksword": 23,

	# # DARKLURKER - 24
	# "Darklurker Soul": 24,
	# "Lifedrain Patch (H)": 24,

	# # NADALIA, BRIDE OF ASH - 25
	# "Soul of Nadalia, Bride of Ash": 25,
	# "Outcry (P)": 25,
	# "Chime of Screams": 25,

	# # LOOKING GLASS KNIGHT - 26
	# "Looking Glass Knight Soul": 26,
	# "Thorned Greatsword": 26,
	# "King's Mirror": 26,

	# # LOST SINNER - 27
	# "Soul of the Lost Sinner": 27,
	# "Lost Sinner's Sword": 27,

	# # DUKE'S DEAR FREJA - 28
	# "Soul of the Duke's Dear Freja": 28,
	# "Spider Fang": 28,
	# "Spider's Silk": 28,

	# # ROTTEN - 29
	# "Soul of the Rotten": 29,
	# "Butcher's Knife": 29,

	# # OLD IRON KING - 30
	# "Old Iron King Soul": 30,
	# "Iron King Hammer": 30,

	# # KING - 31
	# "Soul of the King": 31,
	# "Ruler's Sword": 31,
	# "King's Shield": 31,
	# "King's Ultra Greatsword": 31,

	# # GUARDIAN DRAGON - 32
	# "Guardian Dragon Soul": 32,
	# "Drakewing Ultra Greatsword": 32,
	# "Spitfire Spear": 32,

	# # ANCIENT DRAGON - 33
	# "Ancient Dragon Soul": 33,
	# "Curved Dragon Greatsword": 33,

	# # THRONE WATCHER - 34
	# "Throne Watcher Soul": 34,
	# "Watcher Greatsword": 34,
	# "Watcher's Shield": 34,

	# # THRONE DEFENDER - 35
	# "Throne Defender Soul": 35,
	# "Defender Greatsword": 35,
	# "Defender's Shield": 35,

	# # NASHANDRA - 36
	# "Soul of Nashandra": 36,
	# "Scythe of Want": 36,
	# "Chime of Want": 36,
	# "Bow of Want": 36,

	# # OLD DRAGONSLAYER - 37
	# "Old Dragonslayer Soul": 37,
	# "Dragonslayer Spear": 37,

	# # FUME KNIGHT - 38
	# "Soul of the Fume Knight": 38,
	# "Fume Sword": 38,
	# "Fume Ultra Greatsword": 38,

	# # SIR ALONNE - 39
	# "Soul of Sir Alonne": 39,
	# "Bewitched Alonne Sword": 39,

	# # AAVA, THE KING'S PET - 40
	# "Soul of Aava's the King's Pet": 40,
	# "Ivory Straight Sword": 40,

	# # IVORY KING - 41
	# "Soul of the Ivory King": 41,
	# "Ivory King Ultra Greatsword": 41,

	# # ALSANNA, SILENT ORACLE - 42
	# "Soul of Alsanna, Silent Oracle": 42,
	# "Eleum Loyce": 42,

	# # LUD, THE KING'S PET - 43
	# "Soul of Lud, the King's Pet": 43,
	# "Loyce Greatsword": 43,

	# # ZALLEN, THE KING'S PET - 44
	# "Soul of Zallen, the King's Pet": 44,
	# "Loyce Shield": 44,

	# # ELANA, SQUALID QUEEN - 45
	# "Soul of Elana, Squalid Queen": 45,
	# "Wrathful Axe": 45,
	
	# # SINH, THE SLUMBERING DRAGON - 46
	# "Soul of Sinh, the Slumbering Dragon": 46,
	# "Yorgh's Spear": 46,
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
