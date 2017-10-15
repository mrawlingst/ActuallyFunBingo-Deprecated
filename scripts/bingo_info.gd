extends Node

var game = "World of Warcraft"
var milestones = {}

func info():
	if game == "World of Warcraft":
		return wow_data.info()
	
	return ""

func get_version():
	if game == "World of Warcraft":
		return wow_data.version
	
	return "0"
