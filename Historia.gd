extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func hideAll():
	get_node("ViewportContainer/Inicio/Inicio").hide()
	get_node("ViewportContainer/Limbo/Limbo").hide()
	get_node("ViewportContainer/Caverna/Caverna").hide()
	get_node("ViewportContainer/dentroIlha/dentroIlha").hide()
	get_node("ViewportContainer/acambamentoCaverna/acambamentoCaverna").hide()
	get_node("ViewportContainer/Bifurcaçao/Bifurcaçao").hide()
	get_node("ViewportContainer/Historia/Historia").hide()
	get_node("ViewportContainer/Cabana/Cabana").hide()
	get_node("ViewportContainer/barcoEncalhado/barcoEncalhado").hide()
	get_node("ViewportContainer/Monstro/Monstro").hide()
	get_node("ViewportContainer/Monstro2/Monstro2").hide()
	get_node("ViewportContainer/saidaCaverna/saidaCaverna").hide()
	get_node("ViewportContainer/acampamentoFloresta/acambamentoFloresta").hide()
	get_node("ViewportContainer/areiaMovediça/areiaMovediça").hide()
	get_node("ViewportContainer/areiaMovediça2/areiaMovediça2").hide()
	get_node("ViewportContainer/caminhoCaverna/caminhoCaverna").hide()
	get_node("ViewportContainer/Cais/Cais").hide()
	get_node("ViewportContainer/Barco/Barco").hide()
	get_node("ViewportContainer/Altomar/Altomar").hide()
	get_node("ViewportContainer/Win/Win").hide()
	get_node("ViewportContainer/monstroMorto/monstroMorto").hide()
	pass

func _process(delta):
	if Global.location==0:
		hideAll()
		get_node("ViewportContainer/Inicio/Inicio").show()
		pass
	elif Global.location==1:
		hideAll()
		get_node("ViewportContainer/Limbo/Limbo").show()
		pass
	elif Global.location==2:
		hideAll()
		get_node("ViewportContainer/Caverna/Caverna").show()
		pass
	elif Global.location==3:
		hideAll()
		get_node("ViewportContainer/dentroIlha/dentroIlha").show()
		pass
	elif Global.location==4:
		hideAll()
		get_node("ViewportContainer/acambamentoCaverna/acambamentoCaverna").show()
		pass
	elif Global.location==5:
		hideAll()
		get_node("ViewportContainer/Bifurcaçao/Bifurcaçao").show()
		pass
	elif Global.location==6:
		hideAll()
		get_node("ViewportContainer/Historia/Historia").show()
		pass
	elif Global.location==7:
		hideAll()
		get_node("ViewportContainer/Cabana/Cabana").show()
		pass
	elif Global.location==8:
		hideAll()
		get_node("ViewportContainer/barcoEncalhado/barcoEncalhado").show()
		pass
	elif Global.location==9:
		hideAll()
		get_node("ViewportContainer/Monstro/Monstro").show()
		pass
	elif Global.location==10:
		hideAll()
		get_node("ViewportContainer/Monstro2/Monstro2").show()
		pass
	elif Global.location==11:
		hideAll()
		get_node("ViewportContainer/saidaCaverna/saidaCaverna").show()
		pass
	elif Global.location==12:
		hideAll()
		get_node("ViewportContainer/acampamentoFloresta/acambamentoFloresta").show()
		pass
	elif Global.location==13:
		hideAll()
		get_node("ViewportContainer/areiaMovediça/areiaMovediça").show()
		pass
	elif Global.location==14:
		hideAll()
		get_node("ViewportContainer/areiaMovediça2/areiaMovediça2").show()
		pass
	elif Global.location==15:
		hideAll()
		get_node("ViewportContainer/caminhoCaverna/caminhoCaverna").show()
		pass
	elif Global.location==16:
		hideAll()
		get_node("ViewportContainer/Cais/Cais").show()
		pass
	elif Global.location==17:
		hideAll()
		get_node("ViewportContainer/Barco/Barco").show()
		pass
	elif Global.location==18:
		hideAll()
		get_node("ViewportContainer/Altomar/Altomar").show()
		pass
	elif Global.location==19:
		hideAll()
		get_node("ViewportContainer/Win/Win").show()
		pass
	elif Global.location==20:
		hideAll()
		get_node("ViewportContainer/monstroMorto/monstroMorto").show()
		pass
	pass


func _on_Button_pressed():
	if Global.location==0:
		get_tree().change_scene("res://Inicio.tscn")
		pass
	elif Global.location==1:
		get_tree().change_scene("res://Limbo.tscn")
		pass
	elif Global.location==2:
		Global.location=4
		#get_tree().change_scene("res://Historia.tscn")
		pass
	elif Global.location==3:
		Global.location=12
		#get_tree().change_scene("res://Historia.tscn")
		pass
	elif Global.location==4:
		get_tree().change_scene("res://Caverna.tscn")
		pass
	elif Global.location==5:
		
		pass
	elif Global.location==6:
		get_tree().change_scene("res://Inicio.tscn")
		pass
	elif Global.location==7:
		
		pass
	elif Global.location==8:
		Global.location=6
		#get_tree().change_scene("res://Historia.tscn")
		pass
	elif Global.location==9:
		get_tree().change_scene("res://Limbo.tscn")
		pass
	elif Global.location==10:
		get_tree().change_scene("res://Caverna.tscn")
		pass
	elif Global.location==11:
		
		pass
	elif Global.location==12:
		get_tree().change_scene("res://Floresta.tscn")
		pass
	elif Global.location==13:
		get_tree().change_scene("res://Limbo.tscn")
		pass
	elif Global.location==14:
		get_tree().change_scene("res://Vegetacao.tscn")
		pass
	elif Global.location==15:
		Global.location=2
		#get_tree().change_scene("res://Historia.tscn")
		pass
	elif Global.location==16:
		
		pass
	elif Global.location==17:
		Global.location=18
		#get_tree().change_scene("res://Historia.tscn")
		pass
	elif Global.location==18:
		get_tree().change_scene("res://Inicio.tscn")
		pass
	elif Global.location==19:
		get_tree().change_scene("res://Inicio.tscn")
		pass
	elif Global.location==20:
		
		pass
	pass # Replace with function body.
