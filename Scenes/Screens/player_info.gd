extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if get_parent().has_node("ninja_frog"):
		$health_ProgressBar.value = get_parent().get_node("ninja_frog").health
		$fruitPointsLabel.text = "Puntos: " + str(get_parent().get_node("ninja_frog").fruitCount)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$health_ProgressBar.value = get_parent().get_node("ninja_frog").health
	$fruitPointsLabel.text = "Puntos: " + str(get_parent().get_node("ninja_frog").fruitCount)
	
