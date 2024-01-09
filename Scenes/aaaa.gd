extends CharacterBody2D

var Speed : float = 100.0
var isFacingRight : bool = true
var moving : bool = false
var characterNode : Node2D
var cameraNode : Camera2D

func _physics_process(_delta: float) -> void:
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

	if Input.is_key_pressed(KEY_SHIFT):
		Speed = 200.0
	else:
		Speed = 100.0
	if velocity.x < 0 && isFacingRight == true:
		$/root/Node2D/Wizzard.scale.x = -0.3
		isFacingRight = false
	if velocity.x > 0 && isFacingRight == false:
		$/root/Node2D/Wizzard.scale.x = -0.3
		isFacingRight = true
	


	set_velocity(velocity)
	move_and_slide()
