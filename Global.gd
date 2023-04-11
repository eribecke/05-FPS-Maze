extends Node

var menu = null

func _ready():
	
	pause_mode = Node.PAUSE_MODE_PROCESS

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		if menu == null:
			menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if not menu.visible:
				get_tree().paused = true
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				menu.show()
			else:
				get_tree().paused = false
				menu.hide()
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			
func reset():
	menu = null
