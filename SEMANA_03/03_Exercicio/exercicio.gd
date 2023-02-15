extends Node2D

var lista1 
var lista2 :Array
func _ready() ->void:
	# Lista do exercício 1
	lista1 =[1,2,3,4,5]
	
	

func _process(delta):
	#Texto do exercicio 2
	$Label2.text= "2) Sua Lista é:  " + String(lista2)

func _on_Exercicio_1_pressed():
	#Exercicio 1
	#Colando o texto do Array/lista no Label
	$Label.text= "1)  "+String(lista1)


func _on_Exercicio_2_pressed():
	#Exercício 2 
	#Adiciona o elemento no Label e limpa caixa de entrada
	lista2.push_back($LineEdit.text)
	$LineEdit.text = ""

	
	


func _on_Exercicio_3_pressed():
	$Label3.text = "3) Texto na tela"



func _on_Exercicio_4_pressed():
	$Label4.text ="4)  " + $LineEdit2.text
	$LineEdit2.text= ""
