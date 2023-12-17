extends CharacterBody2D

var speed = 30
var wizzard_chase = false
var wizzard = null

func _physics_process(delta):
	if wizzard_chase:
		position += (wizzard.position - position)/speed
	
		$AnimatedSprite2D.play("walk")
		
		if(wizzard.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else: 
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.play("idle")

func _on_detection_area_body_entered(body):
	wizzard = body
	wizzard_chase = true


func _on_detection_area_body_exited(body):
	wizzard = null
	wizzard_chase = false
