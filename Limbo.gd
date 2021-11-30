extends Spatial



# Called when the node enters the scene tree for the first time.
func _ready():
	Music.selMusic=1
	Global.locationPlayer=0
	Music.checkMusic()
	Music.selcMusic()
	if Global.positionPlayer==4:
		get_node("mudeater").translation=Global.translationPlayer
		get_node("mudeater").rotation_degrees=Global.rotationPlayer
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_F1"):
		get_node("SaveLoad").show()
#	pass


func _on_Area_body_entered(body):
	get_tree().change_scene("res://Menu.tscn")
	Global.song=true
	queue_free()


func _on_Area2_body_entered(body):
	Global.positionPlayer=0
	Global.location=0
	get_tree().change_scene("res://Historia.tscn")
	queue_free()

