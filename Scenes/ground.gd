extends Node2D

class_name Ground

signal bird_crashed

func _on_body_entered(body):
	bird_crashed.emit()
	stop()
	(body as Bird).stop()

func stop():
	get_node("Ground1").stop()
	get_node("Ground2").stop()
