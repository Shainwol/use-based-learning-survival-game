extends CanvasLayer

@onready var timer: Timer = $Timer 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%stamina_number.text = str(Game.character.stamina);
	%day_number.text = str(Game.worldTime.day);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_jump_pressed() -> void:
	Game.character.jump()
	%stamina_number.text = str(Game.character.stamina);

func _on_shortrest_pressed() -> void:
	Game.character.shortrest()
	%stamina_number.text = str(Game.character.stamina);
