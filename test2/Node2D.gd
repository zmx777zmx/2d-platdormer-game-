func _ready():
	pass
	
func _process(delta):
	var texture = $Viewport.get_texture()
	$screen.texture = texture
