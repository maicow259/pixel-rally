extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Ball.ball_exited_screen.connect(_on_ball_exited_screen)

func _on_ball_exited_screen(scoring_player: int) -> void:
	if scoring_player == 1:
		print("left player scored!")
	elif scoring_player == 2:
		print("Right player scored!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
