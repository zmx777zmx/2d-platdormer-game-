extends Control


func _ready():
	pass


#func _on_Button_pressed():
#	get_tree().change_scene("res://Level4.tscn")
#	pass # Replace with function body.


func _on_PoundLane_pressed():
	$PoundLane2.visible = !$PoundLane2.visible
	pass # Replace with function body.


func _on_PoundLane_mouse_entered():
	$PoundLane2.visible = !$PoundLane2.visible
	pass # Replace with function body.


#func _on_Button_mouse_entered():
#	$zone4.visible = !$zone4.visible
	pass # Replace with function body.
