extends Spatial



# Called when the node enters the scene tree for the first time.
func _ready():
	Music.selMusic=1
	Global.locationPlayer=0
	Music.checkMusic()
	Music.selcMusic()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
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

