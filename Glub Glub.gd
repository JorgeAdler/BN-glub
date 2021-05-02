extends Area2D

var speed =170
onready var GlubGlub = $"glub glub spr"

#onready var muzz = $muzzle
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var proj = preload("res://Area2D.tscn")

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Input.is_action_pressed("ui_right"):
		move(speed,0,delta)
		GlubGlub.flip_h = false
	if Input.is_action_pressed("ui_left"):
		move(-speed,0,delta)
		GlubGlub.flip_h = true
	if Input.is_action_pressed("ui_up"):
		move(0,-speed,delta)
	if Input.is_action_pressed("ui_down"):
		move(0,speed,delta)
		
	if Input.is_action_just_pressed("shoot"):
		shoot()

func move(xspeed, yspeed, delta):
	position.x += xspeed*delta
	position.y += yspeed*delta
	
#func _physics_process(delta):
	#velocity = move_and_slide(velocity)
	
#func _physics_process(delta):
	#var p = (get_global_mouse_position() - $muzzle).normalized()
	#position += p * speed * delta
	
func shoot():
	var b = proj.instance()
	owner.add_child(b)
	b.transform = $muzzle.global_transform
	
