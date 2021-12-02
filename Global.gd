extends Node

var song=false
var selMusic
var positionPlayer
var locationPlayer
var location
var weapon=false
var plank=false
var lastWeapon=false
var lastPlank=false
var deathMonstro=false
var audio
var save=false
var lastLocation
var translationPlayer
var rotationPlayer

	
func _ready():
	selMusic=0
	pass
	
func _process(delta):
	pass

func selcMusic():
	if selMusic==0:
		get_node("limbo").stop()
		audio=get_node("main")
	elif selMusic==1:
		get_node("main").stop()
		audio=get_node("limbo")

func playMusic():
	audio.play()
	
func stopMusic():
	audio.stop()
	
func checkMusic():
	selcMusic()
	if Global.song==false:
		stopMusic()
	else:
		playMusic()


