extends KinematicBody2D
"""
KinematicBody which switches colliding rigidbodies'
mode to rigid.
"""

export(Vector2) var vel : = Vector2(10, 0)

func _physics_process(delta: float) -> void:
	var ci : = self.move_and_collide(vel * delta)
	if ci:
		vel = vel.bounce(ci.normal)
		var collider :=  ci.get_collider() as RigidBody2D
		if collider.get_mode() != RigidBody2D.MODE_RIGID:
			print("Set RB mode on : " + str(collider.name))
			collider.set_mode(RigidBody2D.MODE_RIGID)