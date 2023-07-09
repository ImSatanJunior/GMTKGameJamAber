extends CharacterBody2D

var movementEnabled = false;

const SPEED = 100.0

func _process(delta):
	movementEnabled = Global.getMovementEnabled()


func _physics_process(delta):
	if movementEnabled:
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
