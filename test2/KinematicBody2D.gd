extends KinematicBody2D

export (int) var detect_radius
export (float) var fire_rate
#export (PackedScene) var _Bullet
export var Bullet = preload("res://Bullet.tscn")
#onready var Bullet = get_node(_Bullet)
var vis_color = Color(.867, .91, .247, 0.1)

var target
var can_shoot = true
#var velocity = Vector2()

func _ready():
	$Sprite.self_modulate = Color(0.2, 0, 0)
	var shape = CircleShape2D.new()
	shape.radius = detect_radius
	$Visibility/CollisionShape2D2.shape = shape
	$ShootTimer.wait_time = fire_rate

func _physics_process(delta):
	update()
	if target:
		rotation = (target.position - position).angle()
		if can_shoot:
			shoot(target.position)

func shoot(pos):
	
	var b = Bullet.instance()
	#add_child(b)
	var a = (pos + global_position).angle()
	b.start(global_position, a + rand_range(-0.05, 0.05))
	get_parent().add_child(b)
	can_shoot = false
	$ShootTimer.start()

func _draw():
	draw_circle(Vector2(), detect_radius, vis_color)

func _on_visibility_body_entered(body):
	if target:
		return
	target = body
	$Sprite.self_modulate.r = 1.0

func _on_visibility_body_exited(body):
	if body == target:
		target = null
		$Sprite.self_modulate.r = 0.2
	pass # Replace with function body.

func _on_Timer_timeout():
	can_shoot = true
	pass # Replace with function body.
