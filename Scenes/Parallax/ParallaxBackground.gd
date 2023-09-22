extends ParallaxBackground

const SPEED: float = -216.00


func _ready():
	GameManager.gameOver.connect(GameOver)

func _process(delta):
	scroll_offset.x += SPEED * delta

func GameOver() -> void:
	set_process(false)
