extends KinematicBody

var i=10
var gravidade = 9.8
var velocidade = 10
var aceleracao = 20
var rotacao_velocidade = 0.85

var direcao = Vector3()
var deslocamento = Vector3()
var minhaPosicao = Vector3()
var pulo_velocidade = i

func _ready():
	
	pass

func _physics_process(delta):
	var direcao = Vector3()
	deslocamento.y += gravidade * delta

	if Input.is_action_pressed("ui_up") :
		direcao += transform.basis.z    #transform.basis.z * velocidade
	elif Input.is_action_pressed("ui_down"):
		direcao -= transform.basis.z
	if Input.is_action_pressed("ui_right"):
		rotate_y(-rotacao_velocidade * delta)
	elif Input.is_action_pressed("ui_left"):
		rotate_y(rotacao_velocidade * delta)
	
	
	if not is_on_floor():
		minhaPosicao.y -= gravidade * delta
	move_and_slide(minhaPosicao, Vector3.UP) 
	
	if Input.is_action_just_pressed("ui_space") && is_on_floor():
		minhaPosicao.y = pulo_velocidade
	
	direcao = direcao.normalized()
	deslocamento = direcao * velocidade
	deslocamento.linear_interpolate(deslocamento, aceleracao * delta)
	move_and_slide(deslocamento, Vector3.UP)
	for i in get_slide_count():
		var colisao = get_slide_collision(i)
		pass
