extends Control


func _ready():
	pass


func _on_coin_body_entered(body):
	$npc/PondLane.visible = !$npc/PondLane.visible
	pass # Replace with function body.


func _on_Button_pressed():
	$HUD2/introLevel2.visible = !$HUD2/introLevel2.visible
	pass # Replace with function body.
