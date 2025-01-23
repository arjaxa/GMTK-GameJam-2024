extends Area2D

func _on_body_entered(body):
	if body.name == "MainCharacter":
		Global.debt -= 3
		queue_free()
