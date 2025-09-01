extends AnimatedSprite2D

const SPEED = 50
var dirction = 1

@onready var ray_cast_2d_left: RayCast2D = $RayCast2DLeft
@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var anemy: AnimatedSprite2D = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d_left.is_colliding():
		dirction = 1
		anemy.flip_h = false
	if ray_cast_2d_right.is_colliding():
		dirction = -1
		anemy.flip_h = true
	position.x += dirction * SPEED * delta
