extends Node

var wizzard_current_attack = false

var current_scene = "rougelike"
var transition_scene = false

var wizzard_exit_rougelike_posx = 0
var wizzard_exit_rougelike_posy = 0
var wizzard_start_posx = 0
var wizzard_start_posy = 0

func finish_changescenes():
	if transition_scene == true:
		transition_scene =false
		if current_scene == "rougelike":
			current_scene = "FirstHall"
		else:
			current_scene = "rougelike"
