extends RigidBody2D
func _ready() -> void:
	print("RB Mode: " + str(self.mode))
	print("Cansleep: " + str(self.can_sleep))
	print("Inputpickable: " + str(self.input_pickable))

func _physics_process(delta: float) -> void:
	pass
	#if self.sleeping:
		#print(str(name) + ", cansleep:" + str(can_sleep))
