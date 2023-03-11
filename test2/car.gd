extends KinematicBody2D


func _ready():
	$AnimationPlayer.play("car")
	$AudioStreamPlayer2D.play()
	pass
