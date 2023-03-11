extends Control


func _ready():
	pass


#func _on_Button_pressed():
#	get_tree().change_scene("res://Level3.tscn")
#	pass # Replace with function body.


func _on_farmhouse_pressed():
	$'farmhouse2'.visible = !$'farmhouse2'.visible
	pass # Replace with function body.


func _on_Bradfield_pressed():
	$"Bradfield2".visible = !$"Bradfield2".visible
	pass # Replace with function body.

func _on_MissionChurch_pressed():
	$'MisssionChurch'.visible = !$"MisssionChurch".visible
	pass # Replace with function body.
