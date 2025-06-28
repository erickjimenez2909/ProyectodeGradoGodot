extends Sprite2D

@export var texto: String = "" :
	set(value):
		texto = value.strip_edges()
		if texto != "":
			call_deferred("_iniciar_dialogo")

var index = 0

func _ready() -> void:
	visible = false  # Oculto al inicio por si acaso

func _iniciar_dialogo() -> void:
	index = 0
	$Label.text = ""
	visible = true
	$Timer.start()

func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	if index >= texto.length():
		$Timer_escondeDialogo.start()
		$Timer.stop()
	else:
		$Label.text += texto[index]
		index += 1

func _on_timer_esconde_dialogo_timeout() -> void:
	visible = false
