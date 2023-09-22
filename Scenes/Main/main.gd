extends Control

@onready var score = $MarginContainer/HBoxContainer/Score
@onready var highscore = $MarginContainer/HBoxContainer/Highscore


# Called when the node enters the scene tree for the first time.
func _ready():
	score.text = "Score: " + str(GameManager.score)
	highscore.text = "Highscore: " + str(GameManager.highScore)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Fly") == true:
		GameManager.LoadGameScene()
