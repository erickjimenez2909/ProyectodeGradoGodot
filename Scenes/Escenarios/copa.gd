extends Area2D

@export var mensaje_personalizado: String = "¡Has recogido la copa!"

func _on_body_entered(body: Node2D) -> void:
    if body.name == "ninja_frog":
        print("Se recogió la copa, notificando al HUD...")

        var hud = get_node("/root/Node2D/HUD")
        if hud:
            # 🔥 Calcula posición precisa en pantalla con la transformación final del viewport
            var viewport_pos = get_viewport().get_final_transform() * global_position
            print("Viewport position precisa con get_final_transform:", viewport_pos)

            hud.mostrar_mensaje(mensaje_personalizado, viewport_pos)
            
        else:
            print("ERROR: No se encontró el HUD.")
        
        queue_free()
