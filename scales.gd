extends Panel

@onready var damage_text = $VBoxContainer/DamageText
@onready var debt_text = $VBoxContainer/DebtText
@onready var scales = $Scales

func _process(delta):
	damage_text.text = "Damage: " + str(Global.damage)
	debt_text.text = "Debt: " + str(Global.debt)
	var diff = Global.damage - Global.debt
	if diff <= -8:
		scales.animation = "right2"
	elif diff >= -7 and diff <= -4:
		scales.animation = "right1"
	elif diff >= -3 and diff <= 3:
		scales.animation = "balanced"
	elif diff >= 4 and diff <= 7:
		scales.animation = "left1"
	else:
		scales.animation = "left2"
	if diff >= 10 or diff <= -10 or Global.collectables == 8:
		diff = 0
		Global.hasWon = true
		Global.reset()
		get_tree().change_scene_to_file("res://main_menu.tscn")
