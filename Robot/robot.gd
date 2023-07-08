extends CharacterBody2D


const SPEED = 100.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var yDirection = Input.get_axis("ui_up", "ui_down")
	if yDirection:
		velocity.y = yDirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	# As good practice, you should replace UI actions with custom gameplay actions.
	var xDirection = Input.get_axis("ui_left", "ui_right")
	if xDirection:
		velocity.x = xDirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
