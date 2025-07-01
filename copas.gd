extends Node2D  # Cambiado de Node2D a Area2D para detectar colisiones directamente

signal copa_recogida(mensaje)

func _ready() -> void:
	# (Opcional) puedes reproducir una animación si quieres aquí
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "ninja_frog":
		emitir_mensaje()
		queue_free()  # Desaparece la copa

func emitir_mensaje():
	var mensaje = "Dato: una función es un conjunto de instrucciones que puedes reutilizar."
	emit_signal("copa_recogida", mensaje)
