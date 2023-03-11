extends Control

func _on_coin_body_entered(body):
	$npc/ruins.visible = !$npc/ruins.visible
	pass # Replace with function body.


func _on_coin2_body_entered(body):
	$npc/HarrowBar.visible = !$npc/HarrowBar.visible
	pass # Replace with function body.


func _on_coin3_body_entered(body):
	$npc/cottage.visible = !$npc/cottage.visible
	pass # Replace with function body.


func _on_coin5_body_entered(body):
	$npc/FishPond.visible = !$npc/FishPond.visible
	pass # Replace with function body.


func _on_coin6_body_entered(body):
	$npc/HarrowBar.visible = !$npc/HarrowBar.visible
	pass # Replace with function body.



func _on_ButtonBack_pressed():
	get_tree().change_scene("res://game map.tscn")
	pass # Replace with function body.


func _on_LetterButton_pressed():
	$HUD/intro.visible = !$HUD/intro.visible
	pass # Replace with function body.

func _on_LetterButton_mouse_entered():
	$HUD/intro.visible = !$HUD/intro.visible
	pass # Replace with function body.

func _on_introB_pressed():
	$HUD/intro.visible = !$HUD/intro.visible
	pass # Replace with function body.

func _on_Area2D3_body_entered(body):
	$platform1/hide.show()
	pass # Replace with function body.

func _on_Area2D_body_entered(body):
	$platform2/Light.show()
	pass # Replace with function body.

func _on_Area2D_body_exited(body):
	$platform2/Light.hide()
	pass # Replace with function body.

func _on_Area2D2_body_entered(body):
	$platform2/Light2D.show()
	pass # Replace with function body.

func _on_Area2D2_body_exited(body):
	$platform2/Light2D.hide()
	pass # Replace with function body.

func _on_P3area2d_body_entered(body):
	$platform3/Light2D.show()
	pass # Replace with function body.

func _on_P3area2d_body_exited(body):
	$platform3/Light2D.hide()
	pass # Replace with function body.

func _on_platform3Area2d_body_entered(body):
	$platform3/Light2D2.show()
	pass # Replace with function body.

func _on_platform3Area2d_body_exited(body):
	$platform3/Light2D2.hide()
	pass # Replace with function body.

func _on_P3release_body_entered(body):
	$platform3/hide.show()
	pass # Replace with function body.

#func _on_P3release_body_exited(body):
#	$platform3/hide.hide()
#	pass # Replace with function body.

func _on_P41_body_entered(body):
	$platform4/Light2D.show()
	pass # Replace with function body.

func _on_P41_body_exited(body):
	$platform4/Light2D.hide()
	pass # Replace with function body.

func _on_p42_body_entered(body):
	$platform4/Light2D2.show()
	pass # Replace with function body.

func _on_p42_body_exited(body):
	$platform4/Light2D2.hide()
	pass # Replace with function body.

func _on_release_body_entered(body):
	$platform4/hide.show()
	pass # Replace with function body.

func _on_release_body_exited(body):
	$platform4/hide.hide()
	pass # Replace with function body.


func _on_riverdead_body_entered(body):
	get_tree().change_scene("res://Game over.tscn")
	
	pass # Replace with function body.

