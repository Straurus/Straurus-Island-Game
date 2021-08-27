extends Control


# Declare member variables here. Examples:
var i 
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	i=false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Inicio.tscn")
	queue_free()


func _on_Button2_pressed():
	get_tree().change_scene("res://Instruçoes.tscn")
	queue_free()


func _on_Button3_pressed():
	get_tree().free()


func _on_ButtonMusic_toggled(button_pressed):
	if i==false:
		get_node("AudioStreamPlayer").play()
		i=true
	else:
		get_node("AudioStreamPlayer").stop()
		i=false
