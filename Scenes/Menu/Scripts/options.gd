extends Control


func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/Menu.tscn")


func _on_resolucion_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/Video.tscn")
