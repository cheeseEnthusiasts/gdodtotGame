extends CharacterBody2D

var Speed : float = 100.0
var isFacingRight : bool = true
var moving : bool = false
var characterNode : Node2D
var cameraNode : Camera2D

func _physics_process(delta: float) -> void:
	var velocity : Vector2 = get_velocity()

	var direction : Vector2 = Vector2.ZERO

	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1

	if direction != Vector2.ZERO:
		velocity = direction.normalized() * Speed
		moving = true
	else:
		velocity = Vector2.ZERO
		moving = false

	if moving && Input.is_action_pressed("Shift"):
		Speed = 200.0
	else:
		Speed = 100.0



	set_velocity(velocity)
	move_and_slide()
