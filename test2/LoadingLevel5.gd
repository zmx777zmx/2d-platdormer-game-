extends Control

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


func _on_Button_pressed():
	loader = ResourceLoader.load_interactive("res://Level5.tscn")
	item_count = loader.get_stage_count()
	$Label.show()
	$ProgressBar.show()
	$ProgressBar.max_value = item_count - 1
	set_process(true)
	pass # Replace with function body.

