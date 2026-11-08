class_name Character

var stamina = 20

func jump() -> void:
	stamina = stamina - 5
	if stamina < 0 :
		stamina = 0

func shortrest() -> void:
	if stamina < 20:
		stamina = stamina + 4
		if stamina > 20:
			stamina = 20
