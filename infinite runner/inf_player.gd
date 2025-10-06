extends CharacterBody2D

var jump_power = 300
func _process(delta: float) -> void:
	self.velocity.y += get_gravity().y * delta
	move_and_slide()
	

	if(Input.is_action_just_pressed("jump")):
		self.velocity.y = -jump_power
