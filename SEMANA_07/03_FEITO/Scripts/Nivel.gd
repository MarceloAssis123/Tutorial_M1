extends Node2D
#Essa função faz com que o objeto desapareça, quando o personagem encosta
#nele, dando a impressão de que ele foi coletado, e ela marca um
#"Check" no icone do objeto coletado na aba de todos os objetos
func _on_Area2D_body_entered(body):
	$ChavePronta.visible = false
	$KinematicBody2D/Personagem/Camera2D/ChavePronta/Check.visible = true

#Essa função faz com que o objeto desapareça, quando o personagem encosta
#nele, dando a impressão de que ele foi coletado, e ela marca um
#"Check" no icone do objeto coletado na aba de todos os objetos
func _on_Area2D2_body_entered(body):
	$LunetaPronto.visible = false
	$KinematicBody2D/Personagem/Camera2D/LunetaPronto/Check.visible = true
	
#Essa função faz com que o objeto desapareça, quando o personagem encosta
#nele, dando a impressão de que ele foi coletado, e ela marca um
#"Check" no icone do objeto coletado na aba de todos os objetos
func _on_Area2D3_body_entered(body):
	$RelogioFeito.visible = false
	$KinematicBody2D/Personagem/Camera2D/RelogioFeito/Check.visible = true

#Essa função faz com que o objeto desapareça, quando o personagem encosta
#nele, dando a impressão de que ele foi coletado, e ela marca um
#"Check" no icone do objeto coletado na aba de todos os objetos
func _on_Area2D4_body_entered(body):
	$BussolaFeita.visible = false
	$KinematicBody2D/Personagem/Camera2D/BussolaFeita/Check.visible = true

#Essa função faz a troca de cena para a cena final quando
#todos os objetos são coletados
func _process(delta):
	if $KinematicBody2D/Personagem/Camera2D/ChavePronta/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/BussolaFeita/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/LunetaPronto/Check.visible == true and $KinematicBody2D/Personagem/Camera2D/RelogioFeito/Check.visible == true:
		get_tree().change_scene("res://Cenas/Tela Final.tscn")
