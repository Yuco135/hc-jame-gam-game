extends CharacterBody2D

const SPEED = 400.0
const DASH_SPEED = 1000.0
var dashing = false
var can_dash = true 

const JUMP_VELOCITY = -450.0
var jump_count = 0

const wall_jump_pushback = 400
const wall_slide_gravity = 50


@onready var animated_sprite = $AnimatedSprite2D
 
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jump_count = 0
		
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and jump_count < 2:
		jump_count += 1
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("jump")
	if is_on_wall() and Input.is_action_just_pressed("Right"):
		velocity.y = JUMP_VELOCITY
		velocity.x = -wall_jump_pushback
	if is_on_wall() and Input.is_action_just_pressed("Left"):
		velocity.y = JUMP_VELOCITY
		velocity.x = wall_jump_pushback
		
	
	if Input.is_action_just_pressed("Dash") and can_dash:
		dashing = true 
		can_dash = false
		$dash_timer.start()
		$dash_again_timer.start()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		if dashing:
			velocity.x = direction * DASH_SPEED
		else: 
			velocity.x = direction * SPEED
			animated_sprite.play("run")
			animated_sprite.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animated_sprite.play("idle")

	move_and_slide()
	
func game_over():
	get_tree().change_scene_to_file("res://Main Menu/Scenes/lose_screen.tscn")


func _on_dash_timer_timeout() -> void:
	dashing = false

func _on_dash_again_timer_timeout() -> void:
	can_dash = true
