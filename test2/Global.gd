extends Node

var max_lives = 5
var lives = max_lives
var hud

func lose_life():
	lives -= 1
	hud.load_hearts()
	if lives <= 0:
		get_tree().change_scene("res://Game over.tscn")
