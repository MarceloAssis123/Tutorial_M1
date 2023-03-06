extends Control


var nome 
var valor 
var numero :float
var lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	
	#Nessa função eu mudei praticamente tudo, já que da forma que estava só se
	#armazenava o número e o nome não tinha como ser inserido pelo usuario.
	
	#Nessas 3 primeiras linhas eu armazeno o número inserido pelo usuario em na
	#variável numero e mostro na tela o número armazenado
	numero = float($LineEdit.text)
	$LineEdit.text = ""
	$Label.text = "Número coletado: " + String(numero)
	#Nessas outras 3 linhas eu armazeno o nome inserido pelo usuario na variável nome e
	#mostro na Label o nome armazenado
	nome = $LineEdit2.text
	$LineEdit2.text = ""
	$Label5.text = "Nome coletado: " + nome
	
	


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	
	#Nessa função eu mudei o incremento no número para fazer sentido o botão 3, visto que
	#da forma que estava antes era adicionado números ímpares ao número inserido pelo
	#usuario resultando assim sempre em um algum número ímpar na lista 
	lista = []
	for i in range(10):
		lista.append(numero)
		numero += 2
	$Label2.text = "Número incrementado: " + String(lista)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	#Nessa função eu mudei a forma identificar a presença de algum número ímpar na lista, visto que
	#como está sendo incrementado números pares somente o primeiro número importa, já que se
	#ele for par todos da lista também serão pares, e ainda acresentei uma Label que informa 
	#o se o número foi alterado ou não.
	
	if int(numero) % 2 == 0:
		$Label6.text = "Novo nome: " + nome
		$Label7.text = "Nome não alterado"
	else:
		$Label6.text = "Novo nome: " + nome + "baldo"
		$Label7.text = "Nome alterado"
				
