extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.locationPlayer=1
	#Music.checkMusic()
	if Global.positionPlayer==1:
		get_node("mudeater").translation=get_node("Position").translation
		get_node("mudeater").rotation_degrees=get_node("Position").rotation_degrees
	elif Global.positionPlayer==2:
		get_node("mudeater").translation=get_node("Position2").translation
		get_node("mudeater").rotation_degrees=get_node("Position2").rotation_degrees
	elif Global.positionPlayer==3:
		get_node("mudeater").translation=get_node("Position3").translation
		get_node("mudeater").rotation_degrees=get_node("Position3").rotation_degrees
	elif Global.positionPlayer==0:
		get_node("mudeater").translation=get_node("Position0").translation
		get_node("mudeater").rotation_degrees=get_node("Position0").rotation_degrees
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_areaCave_body_entered(body):
	Global.positionPlayer=2
	get_tree().change_scene("res://Caverna.tscn")
	pass # Replace with function body.


func _on_areaFloresta_body_entered(body):
	Global.positionPlayer=2
	get_tree().change_scene("res://Floresta.tscn")
	pass # Replace with function body.





func _on_areaBoat_body_entered(body):
	Global.positionPlayer=0
	Global.location=16
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.

func _on_areaHouse_body_entered(body):
	Global.positionPlayer=3
	Global.location=7
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.
