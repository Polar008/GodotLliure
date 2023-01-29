extends RigidBody
export(float) var vel = 100
export(float) var MaxFvel = 40
export(float) var MinFvel = -100

func _ready():
	pass 
	
func _process(delta):
	var direction = Vector3.ZERO
	
	if Input.is_action_pressed("Right"):
		direction.z += vel 
	if Input.is_action_pressed("Left"):
		direction.z -= vel
	if direction != Vector3.ZERO:
		add_force(direction, Vector3.ZERO)
	
func _integrate_forces(delta):
	var vel = get_linear_velocity()
	vel = Vector3(clamp(vel.x, MinFvel, MaxFvel),vel.y,vel.z)
#	print(vel, linear_velocity)
	set_linear_velocity(vel)
		
func _on_Area_body_entered(body):
	if body.is_in_group("KillZone"):
		queue_free()
