extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.locationPlayer=2
	Music.checkMusic()
	if Global.positionPlayer==1:
		get_node("mudeater").translation=get_node("Position").translation
	elif Global.positionPlayer==2:
		get_node("mudeater").translation=get_node("Position2").translation
	elif Global.positionPlayer==3:
		get_node("mudeater").translation=get_node("Position3").translation
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_areaFloresta_out_body_entered(body):
	Global.positionPlayer=1
	Global.location=0
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaBushes_body_entered():
	Global.positionPlayer=3
	get_tree().change_scene("res://Vegetacao.tscn")
	pass # Replace with function body.


func _on_areaFloresta_in_body_entered():
	print("pass")
	Global.positionPlayer=2
	get_tree().change_scene("res://Caverna.tscn")
	pass # Replace with function body.


