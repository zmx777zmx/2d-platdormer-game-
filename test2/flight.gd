extends KinematicBody2D

func _ready():
	$AnimationPlayer.play("flight")
	$SoundFlight.play()
	pass
