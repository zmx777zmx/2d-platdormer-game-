extends Control

var showmenu = true

var loader:ResourceInteractiveLoader
var item_count
var now_count

func _ready():
	set_process(false)
#	show_menu()
	pass
	
func _process(delta):
	now_count = loader.get_stage() #loading
	loader.poll() #continue to load
	
	$ProgressBar.value = now_count % item_count
	
	if loader.get_resource():
		set_process(false)
		get_tree().change_scene_to(loader.get_resource())
	pass
		

#func _input(event):
#	if event.is_action_pressed("ui_cancel"):
#		showmenu = !showmenu
#		show_menu()
	
#func show_menu():
#	if showmenu:
#		$MainMenu.show()
#	if !showmenu:
#		$MainMenu.hide()

func _on_Play_pressed():
#	print_debug("Play Pressed")
#	showmenu = !showmenu
#	show_menu()
	loader = ResourceLoader.load_interactive("res://game map.tscn")
	item_count = loader.get_stage_count()
	$ProgressBar.hide()
	$ProgressBar.show()
	$ProgressBar.max_value = item_count - 1
	set_process(true)
	#get_tree().change_scene("res://game map.tscn")
	
func _on_Quit_pressed():
	get_tree().quit()
	
func _on_FullScreen_pressed():	
	OS.window_fullscreen = !OS.window_fullscreen
	

func _on_Setting_mouse_entered():
	$play.visible = !$play.visible
	pass # Replace with function body.

func _on_Setting_mouse_exited():
	$play.hide()
	pass # Replace with function body.

func _on_How_to_Play_mouse_entered():
	$play.visible = !$play.visible
	pass # Replace with function body.

func _on_How_to_Play_mouse_exited():
	$play.hide()
	pass # Replace with function body.
