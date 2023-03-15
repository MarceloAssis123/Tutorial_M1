extends Control




func _on_Iniciar_pressed():
	get_tree().change_scene("res://Cenas/Nivel.tscn")



func _on_Sair_pressed():
	get_tree().quit()
