extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_npc_body_entered')
	connect("body_exited", self, '_on_npc_body_exited')
	
func _process(delta):
	$chat.visible = active
	if $fire3 != null:
		$fire3.visible = active
	if $before != null:
		$before.visible = active
	if $iron != null:
		$iron.visible = active
	if $label != null:
		$label.visible = active
	
func _input(event):
	if get_node_or_null('DialogNode') == null:  # show dialog
		if event.is_action_pressed("ui_accept") and active: #dialog & chat iocn showing together
			get_tree().paused = true
			var dialog = Dialogic.start("timeline-Cottage")
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS 
			dialog.connect('timeline_end', self,'unpause')
			add_child(dialog)
			
func unpause(timeline_name):
	get_tree().paused = false 
	
func _on_npc_body_entered(body):
	if body.name == 'player':
		active = true
		
	$SoundNpc.play()
			
	if $Street != null:
		$Street.play()
	if $iron2 != null:
		$iron2.play()
	if $fireinside != null:
		$fireinside.play()
		
func _on_npc_body_exited(body):
	if body.name == 'player':
		active = false
		
	if $Street != null:
		$Street.hide()
	if $iron2 != null:
		$iron2.hide()
	if $fireinside != null:
		$fireinside.hide()
