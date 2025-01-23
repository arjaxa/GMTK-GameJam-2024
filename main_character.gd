extends CharacterBody2D

@onready var main_char_anim = $MainCharAnim

@export var SPEED = 250
@export var ACCEL = 45
@export var money_shot: PackedScene
func _physics_process(delta):
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity.x = move_toward(velocity.x, SPEED * direction.x, ACCEL)
	velocity.y = move_toward(velocity.y, SPEED * direction.y, ACCEL)
	move_and_slide()
	
	if Input.is_action_pressed("down"):
		main_char_anim.animation = "walk"
	elif Input.is_action_pressed("up"):
		main_char_anim.animation = "walk"
	elif Input.is_action_pressed("left"):
		main_char_anim.animation = "walk"
	elif Input.is_action_pressed("right"):
		main_char_anim.animation = "walk"
	else:
		main_char_anim.animation = "Idle"
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and Global.cooldown == true:
		var inst = money_shot.instantiate()
		owner.add_child(inst)
		inst.position.x = position.x
		inst.position.y = position.y

func _process(delta):
	Global.mainCharX = position.x
	Global.mainCharY = position.y
