extends Sprite2D

@onready var timer_mostrar := $Timer
@onready var timer_ocultar := $Timer_escondeDialogo
@onready var label := $Label

var iniciar_habilitado := false
var index := 0

@export var texto: String = "" :
	set(value):
		texto = value.strip_edges()
		if iniciar_habilitado and texto != "":
			call_deferred("_iniciar_dialogo")

func _ready() -> void:
	visible = false  # Oculta la burbuja al cargar
	iniciar_habilitado = true  # Habilita mostrar texto luego del _ready

func _iniciar_dialogo() -> void:
	# 🚫 Cancelar cualquier temporizador activo del diálogo anterior
	timer_mostrar.stop()
	timer_ocultar.stop()

	index = 0
	label.text = ""
	visible = true
	timer_mostrar.start()

func _on_timer_timeout() -> void:
	if index >= texto.length():
		timer_mostrar.stop()
		timer_ocultar.start()
	else:
		label.text += texto[index]
		index += 1

func _on_timer_esconde_dialogo_timeout() -> void:
	visible = false
