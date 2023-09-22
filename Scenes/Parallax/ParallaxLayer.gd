extends ParallaxLayer

@onready var sprite = $Sprite

@export var texture: Texture
@export var scrollScale: float = 0
@export var textureX: float = 1920
@export var textureY: float = 1080

func _ready():
	motion_scale.x = scrollScale
	
	var scale = get_viewport_rect().size.y / textureY
	
	sprite.texture = texture
	sprite.scale = Vector2(scale,scale)
	motion_mirroring.x = textureX * scale
