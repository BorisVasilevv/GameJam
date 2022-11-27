extends Node2D

onready var dialog_player = $DialogPlayer
onready var collider_bomj = $StaticBody2D/CollisionShape2D
var flag = false
var death_count = 0

func _process(delta):
	if dialog_player.flag == true:
		collider_bomj.disabled = true
	if Input.is_key_pressed(KEY_Y) and flag:
		death_count += 1
		dialog_player.background.visible = false
		dialog_player.text_label.text = ""
		flag = false
	if Input.is_key_pressed(KEY_N) and flag:
		dialog_player.background.visible = false
		dialog_player.text_label.text = ""
		flag = false


func _on_read_letter_btn_pressed():
	dialog_player.background.visible = true
	dialog_player.text_label.text = "Вы уверены, что хотите прочитать это письмо?\n y - да \t n - нет\n"
	flag = true
