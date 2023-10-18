extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Gestion de direction 
	if Input.is_action_pressed("ui_up"):
		apply_torque_impulse(Vector3(0,0,0))
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(Vector3(0,1,0))
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(Vector3(0,-1,0))
