extends Node2D

func setup(origem : Vector2, destino : Vector2) -> void:
	$Line2D.add_point(origem)
	$Line2D.add_point(destino)

func _ready():
	$AnimationPlayer.play("Fade")

func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
