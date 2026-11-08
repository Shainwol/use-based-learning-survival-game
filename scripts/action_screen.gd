extends CanvasLayer

var character := Character.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%stamina_number.text = str(character.stamina);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_jump_pressed() -> void:
	character.jump()
	%stamina_number.text = str(character.stamina);

func _on_shortrest_pressed() -> void:
	character.shortrest()
	%stamina_number.text = str(character.stamina);
