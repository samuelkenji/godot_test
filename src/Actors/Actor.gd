extends CharacterBody2D
class_name Actor

@export var speed = 200

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('ui_right'):
		input.x += 1
	if Input.is_action_pressed('ui_left'):
		input.x -= 1
	if Input.is_action_pressed('ui_down'):
		input.y += 1
	if Input.is_action_pressed('ui_up'):
		input.y -= 1
	return input

func _physics_process(delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity.x = direction.x * speed
		velocity.y = direction.y * speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()
