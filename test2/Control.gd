extends Control

func _on_Button_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.

func _on_Button2_pressed():
	get_tree().change_scene("res://Level2.tscn")
	pass # Replace with function body.

func _on_Button3_pressed():
	get_tree().change_scene("res://Level3.tscn")
	pass # Replace with function body.

func _on_Button4_pressed():
	get_tree().change_scene("res://Level4.tscn")
	pass # Replace with function body.

func _on_Button5_pressed():
	get_tree().change_scene("res://Level5.tscn")
	pass # Replace with function body.

func _on_Button6_pressed():
	get_tree().change_scene("res://Level6.tscn")
	pass # Replace with function body.

func _on_Button_mouse_entered():
	#get_tree().change_scene("res://Level1.tscn")
	$L1.visible = !$L1.visible
	pass # Replace with function body.

func _on_Button2_mouse_entered():
	$L2.visible =!$L2.visible
	pass # Replace with function body.

func _on_Button_mouse_exited():
	$L1.hide()
	pass # Replace with function body.

func _on_Button3_mouse_entered():
	$L3.visible =!$L3.visible
	pass # Replace with function body.

func _on_Button2_mouse_exited():
	$L2.hide()
	pass # Replace with function body.

func _on_Button4_mouse_entered():
	$L4.visible = !$L4.visible
	pass # Replace with function body.

func _on_Button4_mouse_exited():
	$L4.hide()
	pass # Replace with function body.

func _on_Button5_mouse_entered():
	$L5.visible = !$L5.visible
	pass # Replace with function body.

func _on_Button5_mouse_exited():
	$L5.hide()
	pass # Replace with function body.

func _on_Button6_mouse_entered():
	$L6.visible = !$L6.visible
	pass # Replace with function body.

func _on_Button6_mouse_exited():
	$L6.hide()
	pass # Replace with function body.


func _on_Button7_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.
