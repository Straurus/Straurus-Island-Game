extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.locationPlayer=2
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
	elif Global.positionPlayer==4:
		get_node("mudeater").translation=Global.translationPlayer
		get_node("mudeater").rotation_degrees=Global.rotationPlayer
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_F1"):
		get_node("SaveLoad").show()
#	pass


func _on_areaFloresta0_body_entered(body):
	Global.positionPlayer=2
	Global.location=0
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaBushes_body_entered(body):
	Global.positionPlayer=3
	Global.location=21
	get_tree().change_scene("res://Vegetacao.tscn")
	pass # Replace with function body.


func _on_areaFloresta1_body_entered(body):
	Global.positionPlayer=1
	Global.location=12
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


