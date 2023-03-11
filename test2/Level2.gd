extends Control


func _ready():
	pass


func _on_back_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.


func _on_letter_pressed():
	$HUD1/introLevel2.visible = !$HUD1/introLevel2.visible
	pass # Replace with function body.


func _on_P1_body_entered(body):
	$platformers/L1.show()
	pass # Replace with function body.


func _on_P1_body_exited(body):
	$platformers/L1.hide()
	pass # Replace with function body.


func _on_P2_body_entered(body):
	$platformers/L2.show()
	pass # Replace with function body.


func _on_P2_body_exited(body):
	$platformers/L2.hide()
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	$platformers/hide.show()
	pass # Replace with function body.


func _on_steps_body_entered(body):
	$Platform2/hide.show()
	pass # Replace with function body.


func _on_P11_body_entered(body):
	$"Platform2/L1-1".show()
	pass # Replace with function body.

func _on_P11_body_exited(body):
	$"Platform2/L1-1".hide()
	pass # Replace with function body.

func _on_P14_body_entered(body):
	$"Platform2/L1-4".show()
	pass # Replace with function body.

func _on_P14_body_exited(body):
	$"Platform2/L1-4".hide()
	pass # Replace with function body.

func _on_P12_body_entered(body):
	$"Platform2/L1-2".show()
	pass # Replace with function body.

func _on_P12_body_exited(body):
	$"Platform2/L1-2".hide()
	pass # Replace with function body.
