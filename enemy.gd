extends Area2D

@export var SPEED = 2

func _physics_process(delta):
	position.x = move_toward(position.x, Global.mainCharX, SPEED)
	position.y = move_toward(position.y, Global.mainCharY, SPEED)

func _on_body_entered(body):
	if body.name == "MainCharacter":
		Global.damage_taken(1)
		queue_free()
	else:
		queue_free()
