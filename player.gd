extends Node2D

@export var speed: float = 200.0

func _ready():
	print("Speed is ", speed)

func _process(delta):
	var dir := Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		dir.x += 1
	elif Input.is_action_pressed("ui_left"):
		dir.x -= 1

	if Input.is_action_pressed("ui_down"):
		dir.y += 1
	elif Input.is_action_pressed("ui_up"):
		dir.y -= 1

	if dir != Vector2.ZERO: # move if any key pressed
		position += dir.normalized() * speed * delta

func _input(event):
	# respond to mouse click (toggle color hint in the editor log)
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("Left click at: ", event.position)
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			print("Right click at: ", event.position)
