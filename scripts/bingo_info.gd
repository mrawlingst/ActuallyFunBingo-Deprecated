extends Node

var game = "World of Warcraft"
var milestones = {}
var version = "1.2.0"
var version_display = ""
var version_checked = false

func info():
	if game == "World of Warcraft":
		return wow_data.info()
	
	if game == "Dark Souls":
		return ds_data.info()
	
	if game == "Dark Souls II":
		return ds2_data.info()
	
	if game == "TLoZ: Breath of the Wild":
		return botw_data.info()
	
	return ""

func get_version():
	if game == "World of Warcraft":
		return wow_data.version
	
	if game == "Dark Souls":
		return ds_data.version
	
	if game == "Dark Souls II":
		return ds2_data.version
	
	if game == "TLoZ: Breath of the Wild":
		return botw_data.version
	
	return "0"
