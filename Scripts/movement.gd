extends Node


# Called when the node enters the scene tree for the first time.
var speed = 1.0

func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	var velocity = Input.get_vector("move_left", "move_right", "move_up", "move_down")
