extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_npc_body_entered')
	connect("body_exited", self, '_on_npc_body_exited')
	
func _process(delta):
	$chat.visible = active
	$"ruins-after".visible = active
	$bombFlight.visible = active
	$bombFlight2/SoundBomb1.visible = active
	$flight.visible = active
	#$flight/SoundFlight.visible = active
	$Fog.visible = active
	$fire.visible = active
	$fire2.visible = active
	$point.visible = active
	
	
func _input(event):
	if get_node_or_null('DialogNode') == null:  # show dialog
		if event.is_action_pressed("ui_accept") and active: #dialog & chat iocn showing together
			get_tree().paused = true
			var dialog = Dialogic.start('timeline-1Ruins')
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS 
			dialog.connect('timeline_end', self,'unpause')
			add_child(dialog)
			
func unpause(timeline_name):
	get_tree().paused = false 
	
func _on_npc_body_entered(body):
	if body.name == 'player':
		active = true
	$SoundNpc.play()
	
	$fire4.play()
	$bombFlight/SoundBomb1.play()
	
func _on_npc_body_exited(body):
	if body.name == 'player':
		active = false
	
	$fire4.hide()
	$bombFlight/SoundBomb1.hide()

