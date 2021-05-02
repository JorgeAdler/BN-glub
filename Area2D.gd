extends Area2D
onready var posp = get_node("/root/Node2D/Glub/muzzle").global_position
export var speed =500
#xport var aaa= get_node()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _physics_process(delta):
	
	var p = (get_global_mouse_position() - posp).normalized()
	position += p * speed * delta
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




#func _on_proj_body_entered(body):
	#queue_free()
