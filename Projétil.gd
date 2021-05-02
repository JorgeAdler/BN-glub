extends RigidBody2D
var speed = 500

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
	 #postiton += transform.x * speed * delta


func _on_Projtil_body_entered(body):
	queue_free()
