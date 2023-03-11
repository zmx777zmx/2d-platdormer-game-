extends Area2D

var active = false

func _ready():
	connect("body_entered", self, '_on_npc_body_entered')
	connect("body_exited", self, '_on_npc_body_exited')
	
