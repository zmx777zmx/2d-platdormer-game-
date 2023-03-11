extends Control


func _ready():
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Menu.tscn")
	pass # Replace with function body.


func _on_HollyCottage_mouse_entered():
	$HC.visible =!$HC.visible
	pass # Replace with function body.


func _on_Old_Salting_point_mouse_entered():
	$OSP.visible =!$OSP.visible
	pass # Replace with function body.


func _on_Dons_Marsh_mouse_entered():
	$DM.visible =!$DM.visible
	pass # Replace with function body.


func _on_end_of_the_journey_pressed():
	get_tree().change_scene("res://Game over - finish.tscn")
	pass # Replace with function body.
