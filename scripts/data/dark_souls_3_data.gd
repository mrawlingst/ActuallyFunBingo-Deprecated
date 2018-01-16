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

    # AXES

    # BOWS

    # CLAWS / FISTS

    # CROSSBOWS

    # CURVED SWORDS

    # CURVED GREATSWORDS

    # DAGGERS

    # GREATAXES

    # GREATBOWS

    # GREAT HAMMERS

    # GREATSWORDS

    # HALBERDS

    # HAMMERS

    # KATANAS

    # REAPERS

    # SPEARS / PIKES

    # STRAIGHT SWORDS
    "Irithyll Straight Sword": 0,

    # THRUSTING SWORDS
    "Irithyll Rapier": 0,

    # ULTRA GREATSWORDS

    # WHIPS

    # SHIELDS

    # RINGS

    # ARMOR SETS
    "Outrider Knight Armor set": 0,

    # PYROMANCIES

    # SORCERIES

    # MIRACLES
    "Lightning Stake (M)": 0,

    # TOOLS
    "Dragon Head Stone": 0,
    "Dragon Torso Stone": 0,
    "Twinkling Dragon Head Stone": 0,
    "Twinkling Dragon Torso Stone": 0,
    "Binoculars": 0,
    "Coiled Sword Fragment": 0,
    "Dark Sigil": 0,
    "Estus Shard (2)": 0,
    ""
    "Undead Bone Shard (5)": 0,

    # KEYS
    "Cell Key": 0,
    "Contraption Key": 0,
    "Grand Archives Key": 0,
    "Gravey Key": 0,
    "Kailbreaker's Key": 0,
    "Jailer's Key Ring": 0,
    "Lift Chamber Key": 0,
    "Old Cell Key": 0,
    "Tower Key": 0,


    # ENEMIES
    "Kill Boreal Outrider Knight in Undead Settlement": 0,
    "Kill Boreal Outrider Knight in Lothric Castle": 0,
    "Kill Boreal Outrider Knight in Grand Archives": 0,
    "Kill Carthus Sandworm": 0,
    "Kill Mimic (High Wall of Lothric)": 0,
    "Kill Mimic (Cathedral of the Deep)": 0,
    "Kill Mimic (Catacombs of Carthus)": 0,
    "Kill Mimic (Irithyll of the Boreal Valley)": 0,
    "Kill Mimic (Irithyll Dungeon)": 0,
    "Kill Mimic (Lothric Castle)": 0,
    "Kill Mimic (Profaned Capital)": 0,

    # VORDT OF THE BOREAL VALLEY - 1
    "Soul of Boreal Valley Vordt": 1,
    "Vordt's Great Hammer": 1,
    "Pontiff's Left Eye Ring": 1,

    # CURSE-ROTTED GREATWORD - 2
    "Soul of the Rotted Greatwood": 2,
    "Hollowslayer Greatsword": 2,
    "Arstor's Spear": 2,

    # CRYSTAL SAGE - 3
    "Soul of a Crystal Sage": 3,
    "Crystal Sage's Rapier": 3,
    "Crystal Hail (S)": 3,

    # DEACONS OF THE DEEP - 4
    "Soul of the Deacons of the Deep": 4,
    "Cleric's Sandelstick": 4,
    "Deep Soul (S)": 4,

    # ABYSS WATCHERS - 5
    "Soul of the Blood of the Wolf": 5,
    "Farron Greatsword": 5,
    "Wolf Knight's Greatsword": 5,

    # HIGH LORD WOLNIR - 6
    "Soul of High Lord Wolnir": 6,
    "Wolnir's Holy Sword": 6,
    "Black Serpent (P)": 6,

    # OLD DEMON KING - 7
    "Soul of the Old Demon King": 7,
    "Old King's Great Hammer": 7,
    "Chaos Bed Vestiges (P)": 7,

    # PONTIFF SULYVAHN - 8
    "Soul of Pontiff Sulyvahn": 8,
    "Greatsword of Judgement": 8,
    "Profaned Greatsword": 8,

    # ALDRICH, DEVOURER OF GODS - 9
    "Soul of Aldrich": 9,
    "Darkmoon Longbow": 9,
    "Lifehunt Scythe (M)": 9,

    # YHORM THE GIANT - 10
    "Soul of Yhorm the Giant": 10,
    "Yhorm's Great Machete": 10,
    "Yhorm's Greatshield": 10,

    # DANCER OF THE BOREAL VALLEY - 11
    "Soul of the Dancer": 11,
    "Dancer's Enchanted Swords": 11,
    "Soothing Sunlight (M)": 11,

    # OCEIROS, THE CONSUMED KING - 12
    "Soul of Consumed Oceiros": 12,
    "Moonlight Greatsword": 12,
    "White Dragon Breath (S)": 12,

    # CHAMPION GUNDYR - 13
    "Soul of Champion Gundyr": 13,
    "Gundyr's Halberd": 13,
    "Prisoner's Chain": 13,

    # DRAGONSLAYER ARMOUR - 14
    "Soul of Dragonslayer Armour": 14,
    "Dragonslayer Greataxe": 14,
    "Dragonslayer Greatshield": 14,

    # THE NAMELESS KING - 15
    "Soul of the Nameless King": 15,
    "Storm Curved Sword": 15,
    "Dragonslayer Swordspear": 15,
    "Lightning Storm (M)": 15,

    # THE TWIN PRINCES - 16
    "Soul of the Twin Princes": 16,
    "Lorian's Greatsword": 16,
    "Lothric's Holy Sword": 16,

    # SOUL OF CINDER - 17
    "Soul of the Lords": 17,
    "Firelink Greatsword": 17,
    "Sunlight Spear (M)": 17,

    # DEMON - 18
    "Soul of a Demon": 18,
    "Demon's Great Axe": 18,
    "Demon's Fist": 18,

     # STRAY DEMON - 19
     "Soul of a Stray Demon": 19,
     "Havel's Ring": 19,
     "Boulder Heave (P)": 19,

     # COVENANTS - 20
     "Join Aldrich Faithful": 20,
     "Join Rosaria's Fingers": 20,
     "Join Blade of the Darkmoon": 20,
     "Join Blue Sentinels": 20,
     "Join Way of Blue": 20,
     "Join Mound-makers": 20,
     "Join Watchdogs of Farron": 20,
     "Join Warriors of Sunlight": 20,
     "Join Spears of the Church": 20,
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
    "Black Firebomb",
    "Fire Gem",
    "Sovereignless Soul",
    "Rusted Gold Coin",
    "Cracked Red Eye Orb",
    "Young White Branch"
]

# Return game specfic info for info label
func info():
	randomize()
	
	var current_class = ds3_classes[randi() % ds3_classes.size()]
	var current_gift = ds3_gifts[randi() % ds3_gifts.size()]
	var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"
	
	return txt
