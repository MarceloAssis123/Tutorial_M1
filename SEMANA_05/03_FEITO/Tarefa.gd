extends Control


var nome 
var valor 
var numero :float
var lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = float($LineEdit.text)
	$LineEdit.text = ""
	$Label.text = "Número coletado: " + String(numero)
	nome = $LineEdit2.text
	$LineEdit2.text = ""
	$Label5.text = "Nome coletado: " + nome
	
	


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	lista = []
	for i in range(10):
		lista.append(numero)
		numero += 2
	$Label2.text = "Número incrementado: " + String(lista)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	if int(numero) % 2 == 0:
		$Label6.text = "Novo nome: " + nome
		$Label7.text = "Nome não alterado"
	else:
		$Label6.text = "Novo nome: " + nome + "baldo"
		$Label7.text = "Nome alterado"
				
