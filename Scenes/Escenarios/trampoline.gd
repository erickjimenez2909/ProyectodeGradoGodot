extends Node2D



func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_activation_area_body_entered(body: Node2D) -> void:
	$AnimatedSprite2D.play("launch")
	body.velocity.y = - 900
	print(body)
