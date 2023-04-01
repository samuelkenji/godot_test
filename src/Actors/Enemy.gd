extends CharacterBody2D

var speed = 100

func _physics_process(delta: float):
	var enemy_position = self.global_position
	print('Enemy position: ', enemy_position)
	var player_position = get_node("../Player").get("global_position")
	var distance_x = player_position.x - enemy_position.x
	var distance_y = player_position.y - enemy_position.y
	print(distance_y)

	if distance_x > 1:
		velocity.x = speed
	elif distance_x < 1:
		velocity.x = speed * -1
	
	if distance_y > 1:
		velocity.y = speed
	elif distance_y < 1:
		velocity.y = speed * -1

	if distance_x == 0 && distance_y == 0:
		velocity = Vector2(0,0)
	
	move_and_slide()
