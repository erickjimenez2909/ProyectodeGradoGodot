extends CanvasLayer

@onready var mensaje_label := $MensajeEducativo
@onready var timer := $Timer

func mostrar_mensaje(texto: String):
	mensaje_label.text = texto
	mensaje_label.visible = true
	timer.start()  # Comienza un conteo para ocultar el mensaje después

func _on_Timer_timeout():
	mensaje_label.visible = false


func _on_copas_copa_recogida(mensaje: Variant) -> void:
	pass # Replace with function body.
