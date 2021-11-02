extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	Music.selMusic=0
	Global.locationPlayer=1
	if Music.audio==Music.get_node("limbo"):
		Music.checkMusic()
	if Global.positionPlayer==1:
		get_node("mudeater").translation=get_node("Position").translation
	elif Global.positionPlayer==2:
		get_node("mudeater").translation=get_node("Position2").translation
	elif Global.positionPlayer==3:
		get_node("mudeater").translation=get_node("Position3").translation
	elif Global.positionPlayer==0:
		get_node("mudeater").translation=get_node("Position0").translation
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	checkWaepon()
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
	Global.location=0
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
