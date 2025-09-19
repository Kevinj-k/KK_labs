extends CharacterBody2D

var speed = 200

@export var bullet_element : Resource

func _process(delta: float) -> void:
	var move_dir = Input.get_axis("left","right")
	
	self.velocity.x = move_dir * speed
	
	if Input.is_action_just_pressed("shoot"):
		var newbullet = bullet_element.instantiate()
		
		add_child(newbullet)
		
	
	move_and_slide()
