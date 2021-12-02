extends Control
var i

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	pass

func savePositionPlayer(x, y, z):
	Global.translationPlayer=x
	Global.rotationPlayer=y
	Global.lastLocation=z
	Global.positionPlayer=4
	pass

func loadPositionPlayer(z):
	if z==0:
		get_tree().change_scene("res://Inicio.tscn")
		#inicio
		pass
	elif z==1:
		get_tree().change_scene("res://Limbo.tscn")
		#limbo
		pass
	elif z==2:
		get_tree().change_scene("res://Caverna.tscn")
		#caverna
		pass
	elif z==3:
		get_tree().change_scene("res://Floresta.tscn")
		#floresta
		pass
	elif z==21:
		get_tree().change_scene("res://Vegetacao.tscn")
		#vegetaçao
		pass
	elif z==5:
		get_tree().change_scene("res://cais.tscn")
		#cais
		pass
	else:
		pass
	pass
func _on_Button_pressed():
	savePositionPlayer(get_node("../mudeater").translation, get_node("../mudeater").rotation_degrees, Global.location)
	Global.lastPlank=Global.plank
	Global.lastWeapon=Global.weapon
	pass # Replace with function body.


func _on_Button2_pressed():
	loadPositionPlayer(Global.lastLocation)
	Global.plank=Global.lastPlank
	Global.weapon=Global.lastWeapon
	pass


func _on_ButtonMusic_toggled(button_pressed):
	if get_node("CenterContainer/ViewportContainer/Viewport/GridContainer/ButtonMusic").pressed==true:
		i=true
		Global.song = i
		Music.checkMusic()
	else:
		i=false
		Global.song = i
		Music.checkMusic()
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().free()


func _on_Button4_pressed():
	get_node(".").hide()
	pass # Replace with function body.
