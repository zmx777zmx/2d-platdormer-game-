extends Control


func _ready():
	pass


func _on_coin_body_entered(body):
	$npc/church.visible = !$npc/church.visible
	pass # Replace with function body.




func _on_letter_pressed():
	$"HUD/intro level 5".visible = !$"HUD/intro level 5".visible
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.


func _on_Button_pressed():
	$"HUD/intro level 5".visible = !$"HUD/intro level 5".visible
	pass # Replace with function body.
