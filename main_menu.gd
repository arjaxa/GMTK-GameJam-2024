extends Node

@onready var explain_panel = $explainPanel

func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_button_2_pressed():
	explain_panel.show()
