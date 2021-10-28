extends Control


# Declare member variables here. Examples:
var i 
#signal song
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
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
	if i==false:
		i=true
		Global.song = i
		Music.checkMusic()
	else:
		i=false
		Global.song = i
		Music.checkMusic()
