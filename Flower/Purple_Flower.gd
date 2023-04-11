extends Area


func _on_Purple_Flower_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
			var flower_sound = get_node_or_null("/root/Game/ItemObtained")
			if flower_sound != null:
				flower_sound.play()
			queue_free()
