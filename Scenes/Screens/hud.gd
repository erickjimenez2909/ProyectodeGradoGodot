extends CanvasLayer

func mostrar_mensaje(texto: String, posicion: Vector2) -> void:
	var mensaje_nube = get_node("MensajeNube")
	var mensaje_label = mensaje_nube.get_node("MensajeLabel")
	mensaje_label.text = texto

	# Ajusta el offset: centra la nube horizontalmente y la sube un poco para que aparezca encima de la copa
	mensaje_nube.position = posicion + Vector2(-mensaje_nube.size.x / 2, -mensaje_nube.size.y - 60)

	mensaje_nube.visible = true

	await get_tree().create_timer(4.0).timeout
	mensaje_nube.visible = false
	print("La nube se ocultó después del tiempo")
