extends Button


@onready var start: Node2D = $".."
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"


func _ready() -> void:
	print('v 1')
	
	
func aa():
	print('button up')
	audio_stream_player_2d.play()
	await get_tree().create_timer(0.2).timeout
	start.queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
