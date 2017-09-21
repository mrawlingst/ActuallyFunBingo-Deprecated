extends Control

func _on_Quit_Button_pressed():
	get_tree().quit()

func _on_World_of_Warcraft_pressed():
	bingo_info.game = "World of Warcraft"
	get_tree().change_scene("res://scenes/scene_bingo.tscn")
