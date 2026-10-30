extends CharacterBody2D

signal ball_exited_screen(scoring_player: int)
var has_scored: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2(200, 100)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())

	if position.x > 640 and not has_scored:
		ball_exited_screen.emit(1)
		has_scored = true
	elif position.x < -16 and not has_scored:
		ball_exited_screen.emit(2)
		has_scored = true
