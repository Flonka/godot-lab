extends KinematicBody2D
"""
KinematicBody which switches colliding rigidbodies'
mode to rigid.
"""

export(Vector2) var vel : = Vector2(10, 0)

func _physics_process(delta: float) -> void:
	var ci : = self.move_and_collide(vel * delta)
	if ci:
		var collider :=  ci.get_collider() as RigidBody2D
		if collider and collider.get_mode() != RigidBody2D.MODE_RIGID:
			vel = vel.bounce(ci.normal)
			collider.set_mode(RigidBody2D.MODE_RIGID)
			# Manually setting the sleeping state on the
			# target rigid body, bypasses the bug.
			#collider.sleeping = false