extends Node

var game = "World of Warcraft"
var milestones = {}

func info():
	if game == "World of Warcraft":
		return wow_data.info()
	
	return ""
