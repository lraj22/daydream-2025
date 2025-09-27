extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".body_entered.connect(announce)
	

var already_announced = false

func announce (b: Node) -> void:
	print("here")
	if already_announced: return
	if b.is_in_group("player"):
		get_parent().get_parent().get_node("Level 1B").queue_free()
		get_parent().get_parent().get_node("Level 1Bi").visible = true
		get_parent().get_parent().get_node("Player").global_position = Vector2(0, 0)
		already_announced = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
