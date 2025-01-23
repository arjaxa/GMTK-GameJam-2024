extends Label

func _process(delta):
	text = "Shards left: " + str(8 - Global.collectables)
