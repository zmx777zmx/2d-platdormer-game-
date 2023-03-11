extends Control



func _on_EXIT_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_PLAYAGAIN_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.


func _on_MAINPAGE_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.
