extends Marker2D

@export var enemy: PackedScene

var timeStep = 0
var flag = 0

func _physics_process(delta):
	if timeStep == 1000:
		timeStep = 0
		var inst = enemy.instantiate()
		owner.add_child(inst)
		inst.position.x = position.x
		inst.position.y = position.y
	else:
		timeStep += 1
