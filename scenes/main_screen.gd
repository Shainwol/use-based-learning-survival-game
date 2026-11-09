extends Node2D

@onready var timer: Timer = $Timer 

func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)
	_actualizar_reloj()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _draw() -> void:
	# draw background
	draw_rect(Rect2(0,0, Game.BACKGROUND.x, Game.BACKGROUND.y), Colors.BLACK)

func _on_timer_timeout() -> void:
	Game.worldTime.pasar_tiempo()
	_actualizar_reloj()

func _actualizar_reloj()-> void:
	%time_text.text = str(Game.worldTime.obtener_tiempo());
