extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_npc_body_entered')
	connect("body_exited", self, '_on_npc_body_exited')
	
#func _process(delta):
#	$bird.visible = active
	
func _on_npc_body_entered(body):
	if body.name == 'player':
		active = true
	$wind.play()

		
func _on_npc_body_exited(body):
	if body.name == 'player':
		active = false
