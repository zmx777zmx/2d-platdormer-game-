extends Control

var radius = 140
var speed = 0.5

var num
var active = false
var isAnimation = false

onready var buts = $Button/buts

func _ready():
	buts.hide()
	num = buts.get_child_count()
	pass

func _on_Button_pressed():
	if !isAnimation:
		if active:
			hide_menu()
		else:
			show_menu()
	pass

func show_menu():
	isAnimation = true
	var unit = TAU /num
	for but in buts.get_children():
		print(but.get_position_in_parent())
		var butRad = unit * but.get_position_in_parent() - PI/2
		var endPos = but.rect_position + Vector2(raius,0).rotated(butRad)
		but.rect_position = endPos
		$Tween.interpolate_property(but,"rect_positione",but.rect_position,endPos,speed,Tween.TRANS_BACK,Tween.EASE_OUT)
		$Tween.interpolate_property(but,"rect_scale",Vector2(0.5,0.5),Vector2(1,1),speed,Tween.TRANS_LINEAR,Tween.EASE_OUT)
		$Tween.start()
		buts.show()
		pass
	pass
		

	
func hide_menu():
	isAnimation = true
	for but in buts.get_children():
		$Tween.interpolate_property(but,"rect_positione",but.rect_position,Vector2(0,0),speed,Tween.TRANS_BACK,Tween.EASE_IN)
		$Tween.interpolate_property(but,"rect_scale",Vector2(1,1),Vector2(0,0),speed,Tween.TRANS_LINEAR,Tween.EASE_IN_OUT,0.05)
		$Tween.start()
	pass


func _on_Tween_tween_all_completed():
	active = not active
	isAnimation = false
	pass # Replace with function body.

