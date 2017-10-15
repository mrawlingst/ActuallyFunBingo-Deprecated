extends Control

func _on_Quit_Button_pressed():
	get_tree().quit()

func _on_World_of_Warcraft_pressed():
	bingo_info.game = "World of Warcraft"
	
	if bingo_info.game == "World of Warcraft":
		bingo_info.milestones = wow_data.milestones
	
	get_tree().change_scene("res://scenes/scene_bingo.tscn")
