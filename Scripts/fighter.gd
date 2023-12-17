extends CharacterBody2D

const speed = 100

func _physics_process(delta):
	pass

func fighter_movement(delta):
	
	if Input.is_action_pressesd("ui_right"):
		velocity.x = speed
		velocity.y = 0
		
