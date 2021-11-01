extends Control


# Declare member variables here. Examples:
var i 
#signal song
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.deathMonstro=false
	Global.weapon=false
	Global.plank=false
	Global.song=false
	Music.checkMusic()
	pass # Replace with function body.


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
