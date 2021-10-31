extends Node

var song=false
var positionPlayer
var locationPlayer
var location
var lastLocation
var weapon=false
var plank=false
var deathMonstro=false

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
