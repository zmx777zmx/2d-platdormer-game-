extends Control


func _ready():
	pass


#func _on_Button_pressed():
#	get_tree().change_scene("res://Level6.tscn")
#	pass # Replace with function body.


func _on_Church_mouse_entered():
	$church.visible = !$church.visible
	pass # Replace with function body.
