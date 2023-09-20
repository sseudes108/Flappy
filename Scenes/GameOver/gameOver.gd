extends Control

@onready var gameOverLabel = $GameOverLabel
@onready var pressJumpLabel = $PressJumpLabel
@onready var timer = $Timer

var canPressJump: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	gameOver()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if canPressJump == true:
		if Input.is_action_just_pressed("Fly") == true:
			GameManager.LoadMainScene()

func gameOver() -> void:
	show()
	timer.start()

func RunSequence() -> void:
	gameOverLabel.hide()
	pressJumpLabel.show()
	canPressJump = true

func _on_timer_timeout():
	RunSequence()
