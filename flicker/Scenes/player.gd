extends CharacterBody2D


const SPEED = 200.0
@export var JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var Direction:= Input.get_vector("Left","Right","Up","Down")

	if Direction!=Vector2(0,0):
		velocity=SPEED*Direction
		rotation= lerp_angle(global_rotation,Direction.angle(),10*delta)
		
		
	else:
		velocity=Vector2.ZERO
	move_and_slide()
