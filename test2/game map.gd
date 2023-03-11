extends Control



func _on_SiteLocation_mouse_entered():
	$du2.play()
	$SiteLocation2.visible = !$SiteLocation2.visible
	$locations.visible = !$locations.visible

func _on_Zone1_mouse_entered():
	$du2.play()
	$Zone_1.visible = !$Zone_1.visible
	pass # Replace with function body.

func _on_Zone2_mouse_entered():
	$du2.play()
	$Zone_2.visible = !$Zone_2.visible
	pass # Replace with function body.

func _on_Zone1_mouse_exited():
	$Zone_1.hide()
	pass # Replace with function body.

func _on_Zone2_mouse_exited():
	$Zone_2.hide()
	pass # Replace with function body.

func _on_Zone3_mouse_entered():
	$du2.play()
	$Zone_3.visible = !$Zone_2.visible

func _on_Zone3_mouse_exited():
	$Zone_3.hide()

func _on_Zone4_mouse_entered():
	$du2.play()
	$Zone_4.visible = !$Zone_4.visible

func _on_Zone4_mouse_exited():
	$Zone_4.hide()

func _on_Zone6_mouse_entered():
	$du2.play()
	$Zone_6.visible = !$Zone_6.visible
	pass # Replace with function body.

func _on_Zone6_mouse_exited():
	$Zone_6.hide()
	pass # Replace with function body.

func _on_SiteLocation_mouse_exited():
	$SiteLocation2.hide()
	$locations.hide()
	pass # Replace with function body.

func _on_Zone7_mouse_entered():
	$du2.play()
	$Zone_7.visible = !$Zone_7.visible
	pass # Replace with function body.

func _on_Zone7_mouse_exited():
	$Zone_7.hide()
	pass # Replace with function body.

		
#func _on_Zone1_pressed():
#	get_tree().change_scene("res://Level1.tscn")
#	pass # Replace with function body.

func _on_RealMap2_mouse_entered():
	$du2.play()
	$RealMap.visible = !$RealMap.visible
	pass # Replace with function body.

func _on_RealMap2_mouse_exited():
	$RealMap.hide()
	pass # Replace with function body.

#func _on_Zone2_pressed():
#	
#	get_tree().change_scene("res://Level2.tscn")
#	pass # Replace with function body.

#func _on_Zone3_pressed():
#	get_tree().change_scene("res://Level3.tscn")
#	pass # Replace with function body.

func _on_Zone6_pressed():
	
	get_tree().change_scene("res://Level5.tscn")
	pass # Replace with function body.

#func _on_Zone4_pressed():
#	get_tree().change_scene("res://Level4.tscn")
#	pass # Replace with function body.

func _on_Zone7_pressed():
	
	get_tree().change_scene("res://Level6.tscn")
	pass # Replace with function body.
