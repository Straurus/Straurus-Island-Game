extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	Music.selMusic=0
	Global.locationPlayer=1
	if Music.audio==Music.get_node("limbo"):
		Music.checkMusic()
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
	elif Global.positionPlayer==4:
		get_node("mudeater").translation=Global.translationPlayer
		get_node("mudeater").rotation_degrees=Global.rotationPlayer
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	checkWaepon()
	if Input.is_action_pressed("ui_F1"):
		get_node("SaveLoad").show()
	pass

func checkWaepon():
	if Global.weapon==true:
		get_node("boat/katana").hide()
	else:
		get_node("boat/katana").show()

func _on_areaCave_body_entered(body):
	Global.positionPlayer=1
	Global.location=2
	get_tree().change_scene("res://Historia.tscn")
	#get_tree().change_scene("res://Caverna.tscn")
	

func _on_areaBushes_body_entered(body):
	Global.positionPlayer=1
	Global.location=21
	#get_tree().change_scene("res://Historia.tscn")
	get_tree().change_scene("res://Vegetacao.tscn")
	#queue_free()


func _on_areaFloresta_body_entered(body):
	Global.positionPlayer=1
	Global.location=3
	get_tree().change_scene("res://Historia.tscn")
	#get_tree().change_scene("res://Floresta.tscn")
	#queue_free()


func _on_Area_body_entered(body):
	Global.positionPlayer=0
	Global.location=6
	Global.weapon=true
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.
