extends Spatial

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	Global.location=1
	get_tree().change_scene("res://Historia.tscn")
	queue_free()
