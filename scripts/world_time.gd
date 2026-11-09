class_name WorldTime extends Node

var day = 5
var hour = 8
var min = 14


func obtener_tiempo() -> String:
	var time_display = "%02d:%02d" % [hour, min] # Resultado: 08:00
	return time_display
	
# Llama a esta función cada vez que pase un minuto en tu juego
func pasar_tiempo() -> void:
	min += 1
	if min >= 60:
		min = 0
		hour += 1
	if hour >= 24:
		hour = 0
		day += 1
