extends RigidBody2D

@export var item_name = "item"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.add_to_inventory(item_name)
		queue_free()  # Eliminar el ítem de la pantalla después de recogerlo
