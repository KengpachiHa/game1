extends Area2D

@onready var game_manager: Node = %GameManager

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var pickup: AudioStreamPlayer2D = $pickup
@onready var coin: Area2D = $"."


@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready():
	print(' v8')


func _on_body_entered(_body: Node2D) -> void:
	game_manager.addPoints() 
	
	animation_player.play("pickup")
	await get_tree().create_timer(0.1).timeout
	pickup.play()
	await get_tree().create_timer(0.3).timeout
	coin.queue_free()
	#audio_stream_player_2d.play()
	
	print('pickuped coin~')
