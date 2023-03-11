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
	
	$ZONE2.value = now_count % item_count
	
	if loader.get_resource():
		set_process(false)
		get_tree().change_scene_to(loader.get_resource())
	pass


func _on_Zone2_pressed():
	loader = ResourceLoader.load_interactive("res://Level2.tscn")
	$ZONE2/Label2.show()
	item_count = loader.get_stage_count()
	$ZONE2.hide()
	$ZONE2.show()
	$ZONE2.max_value = item_count - 1
	set_process(true)
	pass # Replace with function body.

