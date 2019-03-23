extends RigidBody2D

func _ready() -> void:
	pass # Replace with function body.

func _integrate_forces(state: Physics2DDirectBodyState) -> void:
	print("IntegrateF")

func _physics_process(delta: float) -> void:
	pass

func _process(delta: float) -> void:
	#self.add_central_force(Vector2(100,50))
	#self.apply_central_impulse(Vector2(100,50))
	self.position.x += 10 * delta