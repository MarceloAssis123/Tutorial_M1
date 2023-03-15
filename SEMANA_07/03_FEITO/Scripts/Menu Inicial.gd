extends Control



#Essa função faz elementos da cena sumirem e novos
#elementos surgirem para dar continuidade ao jogo
func _on_Iniciar_pressed():
	$Label.visible = false
	$Iniciar.visible = false
	$Sair.visible = false
	$Label2.visible = true
	$Continuar.visible = true


#Essa função faz o usuário sair do jogo, fechando a cena
func _on_Sair_pressed():
	get_tree().quit()

#Essa função faz elementos da cena sumirem e novos
#elementos surgirem para dar continuidade ao jogo
func _on_Continuar_pressed():
	$Label2.visible = false
	$Continuar.visible = false
	$Label3.visible = true
	$Continuar2.visible = true

#Essa função faz a troca de cena, indo assim para o nível principal
func _on_Continuar2_pressed():
	get_tree().change_scene("res://Cenas/Nivel.tscn")
