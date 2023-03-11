extends ScrollContainer

export(float, 0.5, 1, 0.1) var scene_scale = 1
export(float, 1, 1.5, 0.1) var scene_current_scale = 1.3
export(float, 0.1, 1, 0.1) var scroll_duration = 1.3

var scene_current_index: int = 0
var scene_x_positions: Array = []

onready var scroll_tween: Tween = Tween.new()
onready var margin_r: int = $CenterContainer/MarginContainer.get("custom_constants/margin_right")
onready var scene_space: int = $CenterContainer/MarginContainer/HBoxContainer.get("custom_constants/separation")
onready var scene_nodes: Array = $CenterContainer/MarginContainer/HBoxContainer.get_children()


func _ready():
	add_child(scroll_tween)
	yield(get_tree(),"idle_frame")
	
	get_v_scrollbar().modulate.a = 0
	
	for _scene in scene_nodes:
		var _scene_pos_x: float = (margin_r + _scene.rect_position.x)- ((rect_size.x - _scene.rect_size.x) / 2)
		_scene.rect_pivot_offset = (_scene.rect_size / 2)
		scene_x_positions.append(_scene_pos_x)
		
	scroll_horizontal = scene_x_positions[scene_current_index]
	scroll()
		 
func _process(delta):
	for _index in range(scene_x_positions.size()):
		var _scene_pos_x: float = scene_x_positions[_index]
		var _swipe_length: float = (scene_nodes[_index].rect_size.x / 2) + (scene_space / 2)
		var _swipe_current_length: float = abs(_scene_pos_x - scroll_horizontal)
		var _scene_scale: float = range_lerp(_swipe_current_length, _swipe_length, 0, scene_scale, scene_current_scale)
		var _scene_opacity: float = range_lerp(_swipe_current_length, _swipe_length, 0, 0.9, 1)
		
		_scene_scale = clamp(_scene_scale, scene_scale, scene_current_scale)
		_scene_opacity = clamp(_scene_scale,0.3,1)
		
		scene_nodes[_index].rect_scale = Vector2(_scene_scale, _scene_scale)
		scene_nodes[_index].modulate.a = _scene_opacity
		
		if _swipe_current_length < _swipe_length:
			scene_current_index = _index
		
func scroll():
	scroll_tween.interpolate_property(
		self,
		"scroll_horizontal",
		scroll_horizontal,
		scene_x_positions[scene_current_index],
		scroll_duration,
		Tween.TRANS_BACK,
		Tween.EASE_OUT)

	for _index in range(scene_nodes.size()):
		var _scene_scale: float = scene_current_scale if _index == scene_current_index else scene_scale
		scroll_tween.interpolate_property(
			scene_nodes[_index],
			"rect_scale",
			scene_nodes[_index].rect_scale,
			Vector2(_scene_scale,_scene_scale),
			scroll_duration,
			Tween.TRANS_BACK,
			Tween.EASE_OUT)
			
	scroll_tween.start()
	

func _on_ScrollContainer_gui_input(event):
		if event is InputEventMouseButton:
			if event.pressed:
				scroll_tween.stop_all()
			else:
				scroll()
	
