extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	#Global.locationPlayer=2
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


func _on_areaCave_body_entered(body):
	Global.positionPlayer=2
	get_tree().change_scene("res://Caverna.tscn")
	pass # Replace with function body.


func _on_areaFlorest_body_entered(body):
	Global.positionPlayer=3
	get_tree().change_scene("res://Floresta.tscn")
	pass # Replace with function body.


func _on_areaInicio_body_entered(body):
	Global.positionPlayer=3
	Global.location=0
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaQuicksand_body_entered(body):
	if Global.plank==true:
		get_node("quicksand").use_collision=true
		Global.location=14
		get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaQuicksand2_body_entered(body):
	if Global.plank==false:
		get_node("quicksand").use_collision=false
		Global.location=13
		get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.
