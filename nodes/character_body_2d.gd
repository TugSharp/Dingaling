extends CharacterBody2D

@export var speed = 50
@onready var sprite_2d = $CharacterBody2D
@export var sprite_direction = 0
@export var input_direction = Vector4(0,0,0,0)

func get_input():
	input_direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_direction * speed

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
	print(input_direction)
