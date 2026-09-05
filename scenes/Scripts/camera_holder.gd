extends Node3D

@onready var character_body_3d: CharacterBody3D = $"../CharacterBody3D"

@export var player: CharacterBody3D
@export var follow_speed: float = 10.0
@export var offset: Vector3 = Vector3(0, 0, 0) 

func _physics_process(_delta: float) -> void:
	if not player:
		return
	position = player.position
