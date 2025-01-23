extends ProgressBar

func _process(delta):
	value = (10 - Global.damage) * 10
