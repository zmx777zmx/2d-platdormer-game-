extends Control

#func _on_Button_pressed():
#	get_tree().change_scene("res://Level2.tscn")

func _on_Ruins_pressed():
	$Ruins2.visible = !$Ruins2.visible

func _on_Benfleet_Hall_pressed():
	$"Benfleet Hall2".visible = !$"Benfleet Hall2".visible 

func _on_Harrow_Bar_pressed():
	$"Harrow Bar2".visible = !$"Harrow Bar2".visible

func _on_All_Saint_Church_pressed():
	$"All Saint Church2".visible = !$"All Saint Church2".visible

func _on_Fish_Pond_pressed():
	$"Fish Pond2".visible = !$"Fish Pond2".visible

func _on_Horsehoe_Cottage_pressed():
	$"Horsehoe Cottage2".visible = !$"Horsehoe Cottage2".visible
	
func _on_Cottage_at_junction_with_burnt_mill_road2_pressed():
	$"Cottage at junction with burnt mill road2".visible = !$"Cottage at junction with burnt mill road2".visible
	pass # Replace with function body.


func _on_Cottage_at_junction_with_burnt_mill_road_pressed():
	$"Cottage at junction with burnt mill road2".visible = !$"Cottage at junction with burnt mill road2".visible
	pass # Replace with function body.

func _on_Benfleet_Hall_mouse_entered():
	$"Benfleet Hall2".show()
	pass # Replace with function body.

func _on_Benfleet_Hall_mouse_exited():
	$"Benfleet Hall2".hide()
	pass # Replace with function body.

func _on_Ruins_mouse_entered():
	$Ruins2.show()
	pass # Replace with function body.
