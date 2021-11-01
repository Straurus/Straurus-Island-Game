extends Control


var i 

func _ready():
	Music.selMusic=0
	Global.deathMonstro=false
	Global.weapon=false
	Global.plank=false
	Music.checkMusic()
	pass # Replace with function body.

func _process(delta):
	if Global.song==true:
		get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").pressed=true
	elif Global.song==false:
		get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").pressed=false

func _on_Button_pressed():
	Global.location=0
	Global.positionPlayer=0
	get_tree().change_scene("res://Historia.tscn")
	#get_tree().change_scene("res://Inicio.tscn")
	#queue_free()


func _on_Button2_pressed():
	get_tree().change_scene("res://Instruçoes.tscn")
	#queue_free()


func _on_Button3_pressed():
	get_tree().free()


func _on_ButtonMusic_toggled(button_pressed):
	if get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").pressed==true:
		i=true
		Global.song = i
		Music.checkMusic()
	else:
		i=false
		Global.song = i
		Music.checkMusic()
