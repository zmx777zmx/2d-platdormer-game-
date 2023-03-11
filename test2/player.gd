extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED =280
const GRAVITY = 30
const JUMPFORCE = -500
var lightingb = -200
var coins = 0

var wallJump = 300
var jumpWall = 160

func _physics_process(delta):	
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.play("walk-right")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.play("walk-left")
	else:
		$AnimatedSprite.play("idle")
		
	velocity.y = velocity.y + GRAVITY 
	
	if is_on_floor():
		$Particles2D.emitting = true
	else:
		$Particles2D.emitting = false
	
	if Input.is_action_just_pressed("jump") and is_on_floor() or nextToWall():
	
		velocity.y =JUMPFORCE
		
		$jump.play()
		
		if not is_on_floor() and nextToRightWall():
			velocity.x -= wallJump
			velocity.y -= jumpWall
		if not is_on_floor() and nextToLefttWall():
			velocity.x += wallJump
			velocity.y -= jumpWall
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)
	
	if coins == 7:
		#$next.visible = !$next.visible
		get_tree().change_scene("res://Win.tscn")
	
	
func nextToWall():
	return nextToRightWall() or nextToLefttWall()
	
func nextToRightWall():
	return $wallcheckerRight.is_colliding()
	
func nextToLefttWall():
	return $wallcheckerLeft.is_colliding()

func _on_playertimer_timeout():
	visible = false
	
func bounce():
	velocity.y = JUMPFORCE * 0.9
	
func ouch(var enermyposx):
	
	Global.lose_life()
	
	set_modulate(Color(1,0.4,0.3,0.4))
	velocity.y = JUMPFORCE * 0.9
	
	if position.x < enermyposx:
		velocity.x = -800
	elif position.x > enermyposx:
		velocity.x = 800
		
	Input.action_release("ui_left")
	Input.action_release("ui_right")
	
	$Timer.start()

func _on_Timer_timeout():
	set_modulate(Color(1,1,1,1))
	#get_tree().change_scene("res://Game over.tscn")
	pass # Replace with function body.

func add_coin():
	coins = coins + 1 
	print('I now have this many coins: ', coins)
	
func _on_front_body_entered(body):
	get_parent().get_node("front/AnimatedSprite").playing = true
	get_parent().get_node("front/AnimatedSprite").frame = 0
	#$wind.play()
	pass # Replace with function body.


func _on_forest_body_entered(body):
	get_parent().get_node("forest/AnimatedSprite").playing = true
	get_parent().get_node("forest/AnimatedSprite").frame  = 0 
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_parent().get_node("front1/AnimatedSprite").playing = true
	get_parent().get_node("front1/AnimatedSprite").frame  = 0 
	pass # Replace with function body.


func _on_pass_body_entered(body):
	get_tree().change_scene("res://WinLevel2.tscn")
	pass # Replace with function body.


func _on_passing_body_entered(body):
	get_tree().change_scene("res://WinLevel3.tscn")
	pass # Replace with function body.


func _on_vege_body_entered(body):
	get_parent().get_node("vege/AnimatedSprite").playing = true
	get_parent().get_node("vege/AnimatedSprite").frame = 0
	pass # Replace with function body.


func _on_fence_body_entered(body):
	get_parent().get_node("fence/AnimatedSprite").playing = true
	get_parent().get_node("fence/AnimatedSprite").frame = 0

	pass # Replace with function body.

func _on_vege_trans_body_entered(body):
	get_parent().get_node("vege trans/AnimatedSprite").playing = true
	get_parent().get_node("vege trans/AnimatedSprite").frame = 0
	pass # Replace with function body.


func _on_coin_body_entered(body):
	get_tree().change_scene("res://WinLevel4.tscn")
	pass # Replace with function body.


func _on_passingLevel4_body_entered(body):
	get_tree().change_scene("res://WinLevel4.tscn")
	pass # Replace with function body.


func _on_passingLevel5_body_entered(body):
	get_tree().change_scene("res://WinLevel5.tscn")
	pass # Replace with function body.
