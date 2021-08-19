extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_areaCave_body_entered(body):
	get_tree().change_scene("res://Caverna.tscn")
	#queue_free()

func _on_areaBushes_body_entered(body):
	get_tree().change_scene("res://Vegetacao.tscn")
	#queue_free()


func _on_areaFloresta_body_entered(body):
	get_tree().change_scene("res://Foresta.tscn")
	#queue_free()
