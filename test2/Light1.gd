extends Light2D

var _timer = rand_range(0,999)

func _process(delta):
	_timer += 1
	
	var new_scale =sin(_timer * 0.1) * 0.09
	
	scale.x = 1 + new_scale
	scale.y = 1 + new_scale 
	
	scale = Vector2(1 + new_scale, 1 + new_scale)
