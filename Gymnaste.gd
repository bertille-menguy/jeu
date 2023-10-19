extends RigidBody3D

@export var speed = 14
# The downward acceleration when in the air, in meters per second squared.
@export var fall_acceleration = 75

var target_velocity = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	# Do something...
	pass

func _physics_process(delta):
	var direction = Vector3.ZERO
	# We check for each move input and update the direction accordingly.
	if Input.is_action_pressed("ui_right"):
		apply_central_impulse(Vector3(1,0,0))
	if Input.is_action_pressed("ui_left"):
		apply_central_impulse(Vector3(-1,0,0))
	if Input.is_action_pressed("ui_down"):
		apply_central_impulse(Vector3(0,0,1))
	if Input.is_action_pressed("ui_up"):
		apply_central_impulse(Vector3(0,0,-1))
