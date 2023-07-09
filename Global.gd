extends Node

#Set The Users Current Level Score
var score = 0

func setScore(newScore):
	score = newScore

func getScore():
	return score

#Set The Current Level Status
var levelFinished = false

func setLevelFinished(finished: bool):
	levelFinished = finished

func getLevelFinished():
	return levelFinished

#Set Whether The Robot Can Be Moved
var movementEnanbled = false

func setMovementEnabled(enabled: bool):
	movementEnanbled = enabled

func getMovementEnabled():
	return movementEnanbled
