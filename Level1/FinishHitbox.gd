extends Area2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for body in get_overlapping_bodies():
		if body.is_inside_tree():
			Global.setLevelFinished(true)
