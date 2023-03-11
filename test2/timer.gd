extends Control

export (int) var minutes = 01
export (int) var seconds
var dseconds = 10

func _physics_process(delta):
	if dseconds <0:
		seconds -= 1
		dseconds = 10
	if seconds < 0 and minutes > 0:
		minutes -= 1
		seconds = 60
	if minutes < 10:
		$min.set_text("0" + str(minutes))
	else:
		$min.set_text(str(minutes))
	if seconds < 10:
		$sec.set_text("0" + str(seconds))
	else:
		$sec.set_text(str(seconds))
	if dseconds < 10:
		$dsec.set_text("0" + str(dseconds))
	else:
		$dsec.set_text(str(dseconds))
	if minutes == 0 and seconds == 0 and dseconds == 0:
		$Timer.stop()


func _on_Timer_timeout():
	dseconds -= 1
	pass # Replace with function body.
