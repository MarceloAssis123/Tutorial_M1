extends Control



#Essa função realiza a troca de cena voltando para a cena inicial do jogo
func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/Menu Inicial.tscn")
