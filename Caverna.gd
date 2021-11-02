extends Spatial


# Declare member variables here. Examples:
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.locationPlayer=2
	#Music.checkMusic()
	if Global.positionPlayer==1:
		get_node("mudeater").transform=get_node("Position").transform
	elif Global.positionPlayer==2:
		get_node("mudeater").transform=get_node("Position2").transform
	elif Global.positionPlayer==3:
		get_node("mudeater").transform=get_node("Position3").transform
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	checkDragon()
	pass

func checkDragon():
	if Global.deathMonstro==true:
		get_node("dragon/dragon/dragon").hide()
		get_node("dragon/areaMonstro1").transform=get_node("dragon/Position3D2").transform
	elif Global.deathMonstro==false:
		get_node("dragon/dragon/dragon").show()
		get_node("dragon/areaMonstro1").transform=get_node("dragon/Position3D").transform
	
	if Global.plank==true:
		get_node("dragon/plank").hide()
	else:
		get_node("dragon/plank").show()

func _on_areaCave_out_body_entered(body):
	Global.positionPlayer=1
	Global.location=0
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaCave_in_body_entered(body):
	Global.positionPlayer=2
	Global.location=4
	get_tree().change_scene("res://Historia.tscn")
	pass # Replace with function body.


func _on_areaMonstro_body_entered(body):
	Global.positionPlayer=3
	if Global.deathMonstro==false:
		if Global.weapon==true:
			Global.location=10
			Global.deathMonstro=true
		elif Global.weapon==false:
			Global.location=9
			Global.deathMonstro=false
	else:
		Global.location=20
	get_tree().change_scene("res://Historia.tscn")
	checkDragon()
	pass # Replace with function body.
