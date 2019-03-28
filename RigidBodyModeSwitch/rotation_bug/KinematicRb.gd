extends RigidBody2D
func _ready() -> void:
	print("RB Mode: " + str(self.mode))
	print("Cansleep: " + str(self.can_sleep))