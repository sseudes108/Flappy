extends Node2D

const SCROLL_SPEED: float = 216.00

@onready var score = $Score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= SCROLL_SPEED * delta


func _on_screen_exit():
	queue_free()


func PipeCollision(body):
	if body.is_in_group(GameManager.GROUP_PLANE) == true:
		body.Die();


func LaserCollision(body):
	if body.is_in_group(GameManager.GROUP_PLANE) == true:
		score.play()
		GameManager.IncrementScore()
