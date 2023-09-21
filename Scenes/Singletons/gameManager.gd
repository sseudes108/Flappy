extends Node

signal gameOver
# signal updateScore

var score: int = 0
var highScore: int = 0

const GROUP_PLANE: String = "Plane"

var gameScene: PackedScene = preload("res://Scenes/Game/Game.tscn")
var mainScene: PackedScene = preload("res://Scenes/Main/main.tscn")

func LoadGameScene() -> void:
	get_tree().change_scene_to_packed(gameScene)

func LoadMainScene() -> void:
	get_tree().change_scene_to_packed(mainScene)

func GetScore() ->  int:
	return score

func GetHighScore() -> int:
	return highScore

func SetScore(value: int) -> void:
	score = value
	if score > highScore:
		highScore = score
	#updateScore.emit()
	print("sc:%s hs:%s" % [score, highScore])

func IncrementScore() -> void:
	SetScore(score + 1)
