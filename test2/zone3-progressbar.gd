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
	
	$ZONE3.value = now_count % item_count
	
	if loader.get_resource():
		set_process(false)
		get_tree().change_scene_to(loader.get_resource())
	pass

func _on_Zone3_pressed():
	loader = ResourceLoader.load_interactive("res://Level3.tscn")
	item_count = loader.get_stage_count()
	$ZONE3/Label3.show()
	$ZONE3.hide()
	$ZONE3.show()
	$ZONE3.max_value = item_count - 1
	set_process(true)
	pass # Replace with function body.

