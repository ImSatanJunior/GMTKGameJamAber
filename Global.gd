extends Node

var score = 0

func setScore(newScore):
	score = newScore

func getScore():
	return score


var levelFinished = false

func setLevelFinished(finished: bool):
	levelFinished = finished

func getLevelFinished():
	return levelFinished

