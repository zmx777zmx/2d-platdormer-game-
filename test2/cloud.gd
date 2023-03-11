extends ParallaxLayer

export(float) var CLOUDS_SPEED = -10

func _process(delta):
	self.motion_offset.x += CLOUDS_SPEED * delta
	

