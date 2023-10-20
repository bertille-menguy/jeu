extends RigidBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	var v:int = (linear_velocity.length() * 100)
	%Score.text = str(v)
	
	# Trigger the timer when user move
	var timer := Timer.new()
	add_child(timer)

func _physics_process(delta):
	
	# Check for each move input and update the direction accordingly.
	if Input.is_action_pressed("ui_right"):
		apply_central_impulse(Vector3(1,0,0))
	if Input.is_action_pressed("ui_left"):
		apply_central_impulse(Vector3(-1,0,0))
	if Input.is_action_pressed("ui_down"):
		apply_central_impulse(Vector3(0,0,1))
	if Input.is_action_pressed("ui_up"):
		apply_central_impulse(Vector3(0,0,-1))
	if Input.is_action_pressed("ui_accept"):
		apply_central_impulse(Vector3(0,1,0))
		
	# Check if user is on the screen
	if transform.origin.x < -23:
		transform.origin.x = -23
	if transform.origin.x > 23:
		transform.origin.x = 23
	if transform.origin.y > 5:
		transform.origin.y = 5	
	if transform.origin.z < -23:
		transform.origin.z = -23
	if transform.origin.z > 23:
		transform.origin.z = 23
	

	

