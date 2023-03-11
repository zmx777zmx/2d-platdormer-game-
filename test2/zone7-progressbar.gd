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
	
	$ZONE7.value = now_count % item_count
	
	if loader.get_resource():
		set_process(false)
		get_tree().change_scene_to(loader.get_resource())
	pass

func _on_Zone7_pressed():
	loader = ResourceLoader.load_interactive("res://Level6.tscn")
	item_count = loader.get_stage_count()
	$ZONE7/Label6.show()
	$ZONE7.hide()
	$ZONE7.show()
	$ZONE7.max_value = item_count - 1
	set_process(true)
	pass # Replace with function body.

