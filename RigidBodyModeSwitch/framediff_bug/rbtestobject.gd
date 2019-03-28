extends RigidBody2D

export(String) var label_text := "Hello Godot"

func _ready() -> void:
	var l : RichTextLabel = $Label
	l.text = label_text

func _physics_process(delta: float) -> void:

	if Input.is_action_just_pressed("ui_up"):
		_go_rigid()
		apply_impulse(transform.x * 20, -transform.y * 150)

	if Input.is_action_just_pressed("ui_down"):
		_go_rigid()
		apply_impulse(-transform.x * 20, transform.y * 150)

func _go_rigid() -> void:
	if mode != MODE_RIGID:
		set_mode(RigidBody2D.MODE_RIGID)