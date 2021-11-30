extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	checkPlank()
	checkWeapon()
	pass


func  checkWeapon():
	if Global.weapon==false:
		get_node("ViewportContainer/Viewport/GridContainer/weapon").hide()
	elif Global.weapon==true:
		get_node("ViewportContainer/Viewport/GridContainer/weapon").show()
	pass # Replace with function body.
func  checkPlank():
	if Global.plank==false:
		get_node("ViewportContainer/Viewport/GridContainer/plank").hide()
	elif Global.plank==true:
		get_node("ViewportContainer/Viewport/GridContainer/plank").show()
	pass # Replace with function body.
