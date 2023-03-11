extends Control


func _on_coin2_body_entered(body):
	$'SaddleStory'.visible = !$'SaddleStory'.visible
	pass # Replace with function body.


func _on_coin_body_entered(body):
	$story.visible = !$story.visible
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.


func _on_letter_pressed():
	$HUD/introLevel4.visible = !$HUD/introLevel4.visible
	pass # Replace with function body.


func _on_Button_pressed():
	$HUD/introLevel4.visible = !$HUD/introLevel4.visible
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	$"platformer1/moving platform".show()
	$platformer1/introbg.show()
	$"platformer1/moving platform".visible = !$"platformer1/moving platform".visible
	pass # Replace with function body.

func _on_P1_body_entered(body):
	$platformer1/Light1.visible = !$platformer1/Light1.visible
	pass # Replace with function body.


func _on_P1_body_exited(body):
	$platformer1/Light1.hide()
	pass # Replace with function body.

func _on_P2_body_entered(body):
	$platformer1/Light2.visible = !$platformer1/Light2.visible
	pass # Replace with function body.

func _on_P2_body_exited(body):
	$platformer1/Light2.hide()
	pass # Replace with function body.

func _on_P3_body_entered(body):
	$"platformer1/moving platform/movingplatform/Light3".visible = !$"platformer1/moving platform/movingplatform/Light3".visible
	pass # Replace with function body.

func _on_P3_body_exited(body):
	$"platformer1/moving platform/movingplatform/Light3".hide()
	pass # Replace with function body.

func _on_P4_body_entered(body):
	$platformer1/Light4.visible = !$platformer1/Light4.visible
	pass # Replace with function body.

func _on_P4_body_exited(body):
	$platformer1/Light4.hide()
	pass # Replace with function body.
