extends Node2D

signal aviso(numero)

var cont = 0

func _ready():
	connect("aviso", self, "_on_aviso")


func _on_Button_pressed():
	cont += 1
	
	if cont > 5:
		emit_signal("aviso", cont)

func _on_aviso(numero):
	$Label.text = "Me han avisado que estas haciendo click " + str(cont)
