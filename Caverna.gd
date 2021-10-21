extends Spatial


# Declare member variables here. Examples:
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Music.checkMusic()
	if Global.positionPlayer==1:
		get_node("mudeater").transform=get_node("Position").transform
	elif Global.positionPlayer==2:
		get_node("mudeater").transform==get_node("Position2").transform
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_areaCave_out_body_entered(body):
	Global.positionPlayer=1
	get_tree().change_scene("res://Inicio.tscn")
	pass # Replace with function body.


func _on_areaCave_in_body_entered(body):
	#bifurcaçao cabana
	Global.positionPlayer=2
	get_tree().change_scene("res://Vegetacao.tscn")
	pass # Replace with function body.
