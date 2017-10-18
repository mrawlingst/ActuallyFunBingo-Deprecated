extends Node

var game = "World of Warcraft"
var milestones = {}
var version = "v1.1.0"

func info():
	if game == "World of Warcraft":
		return wow_data.info()
	
	if game == "Dark Souls":
		return ds_data.info()
	
	if game == "TLoZ: Breath of the Wild":
		return botw_data.info()
	
	return ""

func get_version():
	if game == "World of Warcraft":
		return wow_data.version
	
	if game == "Dark Souls":
		return ds_data.version
	
	if game == "TLoZ: Breath of the Wild":
		return botw_data.version
	
	return "0"
