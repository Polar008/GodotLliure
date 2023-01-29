extends Camera
var player

func _ready():
	player = get_node("/root/Main/Player2")

func _process(delta):
	if(has_node("/root/Main/Player2")):
		translation.x = player.translation.x - 10
		translation.y = player.translation.y + 10
		translation.z = player.translation.z
