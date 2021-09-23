extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Music.checkMusic()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_areaFloresta_out_body_entered(body):
	get_tree().change_scene("res://Inicio.tscn")
	pass # Replace with function body.


func _on_areaBushes_body_entered():
	get_tree().change_scene("res://Vegetacao.tscn")
	pass # Replace with function body.


func _on_areaFloresta_in_body_entered():
	#bifurcaçao cabana
	pass # Replace with function body.
