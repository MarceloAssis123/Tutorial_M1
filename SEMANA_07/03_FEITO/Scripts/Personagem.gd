extends KinematicBody2D

#Criação de variáveis para realizar o movimento do personagem
var movimento = Vector2()
var movimentoEsquerda :float
var movimentoDireita :float
var movimentoCima :float
var movimentoBaixo :float
var multiplicadorDeMovimento = 500

#Essa função faz com que as variáveis de movimento recebam valores para
#realizar o movimento do personagem 
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

#Função padrão do Godot que é chamada a cada frame do jogo
func _physics_process(delta):
#Funções sendo chamadas
	limitacaoDeMovimento()
	movimentacaoDoMapa()
	movimentoHorizontal()
	movimentoVertical()
#Criação de um move and slide para a variável de movimento para que
#ela fique mais precisa
	movimento = move_and_slide(movimento)
	
#Função que realiza o movimento horizontal
func movimentoHorizontal():
	movimento.x = (movimentoDireita - movimentoEsquerda) * multiplicadorDeMovimento

#Função que realiza o movimento vertical
func movimentoVertical():
	movimento.y = (movimentoBaixo - movimentoCima) * multiplicadorDeMovimento

#Função que limita o movimento do personagem para ele não sair do cenário
func limitacaoDeMovimento():
	if $Personagem.global_position.x >= 3717:
		$Personagem.global_position.x = 3717
	if $Personagem.global_position.x <= -1279:
		$Personagem.global_position.x = -1279
	if $Personagem.global_position.y >= 2548:
		$Personagem.global_position.y = 2548
	if $Personagem.global_position.y <= -851:
		$Personagem.global_position.y = -851
	
#Essa função altera o posicionamento do mini mapa para que ele não saia da HUD
func movimentacaoDoMapa():
	if $Personagem.global_position.x > 1215 and $Personagem.global_position.y > 624:
		$Personagem/Camera2D/MapaDoJogo1.visible = true
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x > 1215 and $Personagem.global_position.y < 624:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = true
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x < 1215 and $Personagem.global_position.y > 624:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = true
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = false
	if $Personagem.global_position.x < 1215 and $Personagem.global_position.y < 624:
		$Personagem/Camera2D/MapaDoJogo1.visible = false
		$Personagem/Camera2D/MapaDoJogo2.visible = false
		$Personagem/Camera2D/MapaDoJogo3.visible = false
		$Personagem/Camera2D/MapaDoJogo4.visible = true
	

