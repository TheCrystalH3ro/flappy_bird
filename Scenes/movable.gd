extends Node2D

class_name Movable

@export var speed = -150

@export var start_position = Vector2.ZERO
var sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = get_node("Sprite2D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sprite.global_position.x += speed * delta
	
	if sprite.global_position.x < -sprite.texture.get_width():
		sprite.global_position.x = start_position.x + sprite.texture.get_width() - 1

func stop():
	speed = 0
