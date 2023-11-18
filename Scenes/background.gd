extends Node2D

class_name Background

@onready var background_1 = $Background1 as Movable
@onready var background_2 = $Background2 as Movable

func stop():
	background_1.stop()
	background_2.stop()
