extends Area2D

signal coin_collected

func _on_coin_body_entered(body):
	$AnimationPlayer.play("bounce")
	#body.add_coin()
	emit_signal("coin_collected")
	$SoundCoinCollection.play()
	
func _on_coin_body_exited(body):
	queue_free()
	pass # Replace with function body.

