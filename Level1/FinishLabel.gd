extends Label





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.getLevelFinished():
		self.text = str("Level Has Been Completed")
