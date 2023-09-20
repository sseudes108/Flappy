extends CharacterBody2D

@onready var anim = $AnimationPlayer
@onready var sprite = $AnimatedSprite2D

const GRAVITY : float = 1000.00
const POWER : float = -400.00

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	Fly()
	
	move_and_slide()
	
	if is_on_floor() == true:
		Die()

func Fly() -> void:
	if Input.is_action_just_pressed("Fly") == true:
		velocity.y = POWER
		anim.play("Fly")

func Die() -> void:
		sprite.stop()
		set_physics_process(false)
