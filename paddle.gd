extends CharacterBody2D
var speed: float = 300.0
@export var move_up_action: String = "move_up"
@export var move_down_action: String = "move_down"
var direction: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	direction = 0.0
	
	if Input.is_action_pressed(move_up_action):
		direction = - 1.0

	elif Input.is_action_pressed(move_down_action):
		direction = 1.0

	velocity.y = direction * speed
	move_and_slide()
	position.y = clamp(position.y, 0.0, 280.0)
	
	
