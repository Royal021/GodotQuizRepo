extends CharacterBody3D

@export var pause_screen: PackedScene



func _ready():
	pass
	
	
func _process(delta):
	
	
	var turnLeft = Input.is_action_pressed("rotateLeft")
	var turnRight = Input.is_action_pressed("rotateRight")
	var moveForward = Input.is_action_pressed("moveForward")
	var moveBackward = Input.is_action_pressed("moveBackward")
	var move_vec = Vector3(0,0,0)
	
	
	if(Input.is_action_pressed("pause")):
		get_tree().paused = true
	
	if(turnLeft):
		self.rotate(Vector3(0,1,0),0.01)
		#self.global_rotate(Vector3(0,1,0),0.01)
	if(turnRight):
		self.rotate(Vector3(0,1,0),-0.01)
		#self.global_rotate(Vector3(0,1,0),-0.01)
	if(moveForward):
		
		move_vec =global_transform.basis.z * -5
	if(moveBackward):
		move_vec =global_transform.basis.z * 5
		
	velocity = move_vec
	move_and_slide()
	
	
func got_pickup(pickup):
	Globals.point_score+=50
	pickup.queue_free()
