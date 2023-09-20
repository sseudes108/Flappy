extends Node2D

@export var pipesScene: PackedScene

@onready var pipesHolder = $"Pipes Holder"
@onready var spawnU = $SpawnU
@onready var spawnL = $SpawnL
@onready var spawnTimer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	SpawnPipe()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func SpawnPipe():
	var yPos = randf_range(spawnU.position.y, spawnL.position.y)
	var newPipes = pipesScene.instantiate()
	
	newPipes.position = Vector2(spawnU.position.x, yPos)
	pipesHolder.add_child(newPipes)

func _on_timer_timeout():
	SpawnPipe()
