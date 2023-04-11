extends Control

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _on_Play_pressed():
	Global.reset()
	get_tree().paused = false
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()
