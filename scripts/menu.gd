extends Control

func _ready():
	get_node("Version").set_text(bingo_info.version)
	
	print("BOTW:" + str(botw_data.milestones.size()))
	print("DS1:" + str(ds_data.milestones.size()))
	print("WOW:" + str(wow_data.milestones.size()))

func _on_Quit_Button_pressed():
	get_tree().quit()

func _on_World_of_Warcraft_pressed():
	bingo_info.game = "World of Warcraft"
	bingo_info.milestones = wow_data.milestones
	
	go_to_bingo()

func _on_Dark_Souls_pressed():
	bingo_info.game = "Dark Souls"
	bingo_info.milestones = ds_data.milestones
	
	go_to_bingo()

func _on_Breath_of_the_Wild_pressed():
	bingo_info.game = "TLoZ: Breath of the Wild"
	bingo_info.milestones = botw_data.milestones
	
	go_to_bingo()

func go_to_bingo():
	get_tree().change_scene("res://scenes/scene_bingo.tscn")


func _on_Credits_pressed():
	get_tree().change_scene("res://scenes/scene_about.tscn")
