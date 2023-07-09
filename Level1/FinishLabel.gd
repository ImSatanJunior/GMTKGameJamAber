extends Label





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.getLevelFinished():
		self.text = "Level Has Been Completed By Destroying " + str(Global.getScore()) + " Walls"
