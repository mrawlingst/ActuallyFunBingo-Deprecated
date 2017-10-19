extends Node

func _ready():
	get_node("Version").set_text(bingo_info.version)

func _on_Back_pressed():
	get_tree().change_scene("res://scenes/scene_menu.tscn")

func _on_Contents_meta_clicked( meta ):
	OS.shell_open(meta)
