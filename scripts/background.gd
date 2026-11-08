extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _draw() -> void:
	# draw background
	draw_rect(Rect2(0,0, Game.BACKGROUND.x, Game.BACKGROUND.y), Colors.BLACK)
