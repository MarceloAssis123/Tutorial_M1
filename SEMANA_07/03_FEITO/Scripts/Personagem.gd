extends KinematicBody2D


var movimento = Vector2()
var movimentoEsquerda :float
var movimentoDireita :float
var movimentoCima :float
var movimentoBaixo :float
var multiplicadorDeMovimento = 500

func _input(event):
	if event.is_action_pressed("ui_left"):
		movimentoEsquerda = 1
	elif event.is_action_released("ui_left"):
		movimentoEsquerda = 0
	elif event.is_action_pressed("ui_right"):
		movimentoDireita = 1
	elif event.is_action_released("ui_right"):
		movimentoDireita = 0
	elif event.is_action_pressed("ui_up"):
		movimentoCima = 1
	elif event.is_action_released("ui_up"):
		movimentoCima = 0
	elif event.is_action_pressed("ui_down"):
		movimentoBaixo = 1
	elif event.is_action_released("ui_down"):
		movimentoBaixo = 0
		
func _physics_process(delta):
	limitacaoDeMovimento()
	movimentacaoDoMapa()
	movimentoHorizontal()
	movimentoVertical()
	movimento = move_and_slide(movimento)
	

func movimentoHorizontal():
	movimento.x = (movimentoDireita - movimentoEsquerda) * multiplicadorDeMovimento

func movimentoVertical():
	movimento.y = (movimentoBaixo - movimentoCima) * multiplicadorDeMovimento

func limitacaoDeMovimento():
	if $Personagem.global_position.x >= 3717:
		$Personagem.global_position.x = 3717
	if $Personagem.global_position.x <= -1279:
		$Personagem.global_position.x = -1279
	if $Personagem.global_position.y >= 2548:
		$Personagem.global_position.y = 2548
	if $Personagem.global_position.y <= -851:
		$Personagem.global_position.y = -851
		
func movimentacaoDoMapa():
	if $Personagem.global_position.x > 0 and $Personagem.global_position.y > 0:
		$Personagem/Camera2D/MapaDoJogo1.visible = true
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x > 0 and $Personagem.global_position.y < 0:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = true
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x < 0 and $Personagem.global_position.y > 0:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = true
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x < 0 and $Personagem.global_position.y < 0:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = true
	

