extends Spatial

export(Array, PackedScene) var platforms
var startX = 30
var startY = -15
var plusX = 1
var plusY = 1

func _ready():
	for i in range(20):
		var platn = randi() % platforms.size()
		var slope = platforms[platn].instance()
		slope.translation = Vector3(startX,startY,randi() % 20 - 10)
		add_child(slope)
		startX += 100 + plusX
		startY -= 70 +plusY
		plusX += 0
		plusY += 0

