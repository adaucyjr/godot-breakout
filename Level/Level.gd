extends Node

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		get_tree().reload_current_scene()


func _on_YellowBrick_body_entered(body):
	#$YellowBrick.visible = false
	print("collide")
