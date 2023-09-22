extends Node2D

@export var pipesScene: PackedScene
# Pipes
@onready var pipesHolder = $"Pipes Holder"
@onready var spawnU = $SpawnU
@onready var spawnL = $SpawnL
@onready var spawnTimer = $"Spawn Timer"
# Audio
@onready var engine = $Engine
@onready var gameOverSound = $GameOverSound

func _ready():
	GameManager.SetScore(0)
	engine.play()
	GameManager.gameOver.connect(GameOver)
	SpawnPipe()

func _process(delta):
	pass

func SpawnPipe():
	var yPos = randf_range(spawnU.position.y, spawnL.position.y)
	var newPipes = pipesScene.instantiate()
	
	newPipes.position = Vector2(spawnU.position.x, yPos)
	pipesHolder.add_child(newPipes)
	
func StopPipes() -> void:
	spawnTimer.stop()
	for pipe in pipesHolder.get_children():
		pipe.set_process(false)

func _on_timer_timeout():
	SpawnPipe()

func GameOver() -> void:
	StopPipes()
	engine.stop()
	gameOverSound.play()
