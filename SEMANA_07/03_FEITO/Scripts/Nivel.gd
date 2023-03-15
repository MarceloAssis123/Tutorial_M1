extends Node2D

func _on_Area2D_body_entered(body):
	$Chave.visible = false
	$KinematicBody2D/Personagem/Camera2D/Chave2/Check.visible = true


func _on_Area2D2_body_entered(body):
	$Luneta.visible = false
	$KinematicBody2D/Personagem/Camera2D/Luneta2/Check.visible = true
	

func _on_Area2D3_body_entered(body):
	$Relogio.visible = false
	$KinematicBody2D/Personagem/Camera2D/Relogio2/Check.visible = true


func _on_Area2D4_body_entered(body):
	$Bussola.visible = false
	$KinematicBody2D/Personagem/Camera2D/Bussola2/Check.visible = true


func _process(delta):
	if $KinematicBody2D/Personagem/Camera2D/Chave2/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/Bussola2/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/Luneta2/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/Relogio2/Check.visible == true:
		get_tree().change_scene("res://Cenas/Tela Final.tscn")
