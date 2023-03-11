extends Control


func _on_coin_body_entered(body):
	$npc/HollyCottage.visible = !$npc/HollyCottage.visible
	#$HollyCottage.visible = !$HollyCottage.visible
	pass # Replace with function body.


func _on_coin2_body_entered(body):
	$npc/OldSaltingPoint.show()
		#$npc/OldSaltingPoint.visible = !$npc/OldSaltingPoint.visible
	pass # Replace with function body.


func _on_letter_pressed():
	$HUD/introLevel6.visible = !$HUD/introLevel6.visible
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.


func _on_Button_pressed():
	$HUD/introLevel6.visible = !$HUD/introLevel6.visible
	pass # Replace with function body.


func _on_pl1_body_entered(body):
	$platforms/L1.visible = !$platforms/L1.visible
	pass # Replace with function body.

func _on_pl1_body_exited(body):
	$platforms/L1.hide()
	pass # Replace with function body.

func _on_pl2_body_entered(body):
	$platforms/L2.show()
	pass # Replace with function body.

func _on_pl2_body_exited(body):
	$platforms/L2.hide()
	pass # Replace with function body.

func _on_pl3_body_entered(body):
	$platforms/L3.show()
	pass # Replace with function body.

func _on_pl3_body_exited(body):
	$platforms/L3.hide()
	pass # Replace with function body.

func _on_show_body_entered(body):
	$platforms/HidePlatform.show()
	pass # Replace with function body.

func _on_show_body_exited(body):
	$platforms/HidePlatform.hide()
	pass # Replace with function body.
