extends CanvasLayer
var coins = 0

func _ready():
	$collection/Coins.text = String(coins)
	load_hearts()
	Global.hud = self

func load_hearts():
	$collection/hearts.rect_size.x = Global.lives * 89
	$collection/heartsEmpty.rect_size.x = (Global.max_lives - Global.lives) * 79
	$collection/heartsEmpty.rect_position.x = $collection/hearts.rect_position.x + $collection/hearts.rect_size.x * $collection/hearts.rect_scale.x 


func _on_coin_collected():
	coins = coins + 1
	if coins == 7:
		#$next.visible = !$next.visible
		get_tree().change_scene("res://Win.tscn")
	_ready()
	pass # Replace with function body.
