extends Node

var song

func _ready():
	pass
	
func playMusic():
	get_node("AudioStreamPlayer").play()
func stopMusic():
	get_node("AudioStreamPlayer").stop()
func checkMusic():
	if Global.song ==false:
		stopMusic()
	else:
		playMusic()
