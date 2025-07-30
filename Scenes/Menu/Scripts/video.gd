extends Control


func _on_option_button_item_selected(index: int) -> void:
	GeneralRules.change_display_mode(index)
	


func _on_volver_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/Options.tscn")
