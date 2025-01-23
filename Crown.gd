extends TextureRect

@onready var crown = $"."

func _process(delta):
	if Global.hasWon == true:
		crown.show()
