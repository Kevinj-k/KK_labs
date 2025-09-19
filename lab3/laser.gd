extends RigidBody2D

@export var shot_speed = 750

func _ready() -> void:
	self.apply_impulse(Vector2(0,-shot_speed))
	
