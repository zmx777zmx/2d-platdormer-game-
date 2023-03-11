extends Area2D


func _on_CollisionShape2D_visibility_changed():
	$AnimationPlayer.play("RuinsMB")
	pass # Replace with function body.

