extends KinematicBody2D

var speed = 500
var velocity = Vector2.ZERO

func _ready():
	start_ball()

func _physics_process(delta):
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		#$CollisionSound.play()
		velocity = velocity.bounce(collision_object.normal)

func start_ball():
	position.y = get_viewport().size.y / 2 # - 100
	randomize()
	#position.x = randi() % (int(get_viewport().size.x) + 16)
	position.x = get_viewport().size.x / 2
	#velocity.x = [-1,1][randi() % 2]
	velocity.y = 1
