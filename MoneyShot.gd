extends RigidBody2D

@export var SPEED = 20
@export var timeToDespawn = 45

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and Global.cooldown == true:
		Global.cooldown = false
		Global.mousePoint = get_global_mouse_position()
		look_at(Global.mousePoint)
		Global.debt += 1
	position += transform.x * SPEED
	if timeToDespawn > 0:
		timeToDespawn -= 1
	else:
		queue_free()
		Global.cooldown = true

