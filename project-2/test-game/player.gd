extends Node2D

@export var speed = 200
var input_vector =  Vector2.ZERO


func _ready():
	print("player is ready")
	
func _process(delta):
	
	input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		input_vector.y -= 1
		
	if Input.is_action_pressed("move_down"):
		input_vector.y += 1
	
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1

	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	
	input_vector = input_vector.normalized()
	position  += input_vector * speed * delta 
	
