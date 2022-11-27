extends Node2D

onready var dialog_player = $DialogPlayer
onready var collider_bomj = $StaticBody2D/CollisionShape2D
onready var read_letter_btn = $read_letter_btn
var flag = false

func _process(delta):
	if dialog_player.flag == true:
		collider_bomj.disabled = true
		read_letter_btn.visible = true
	if Input.is_key_pressed(KEY_Y) and flag:
		dialog_player.background.visible = false
		dialog_player.text_label.text = ""
		flag = false
	if Input.is_key_pressed(KEY_N) and flag:
		dialog_player.background.visible = false
		dialog_player.text_label.text = ""
		flag = false

func _on_read_letter_btn_pressed():
	dialog_player.background.visible = true
	dialog_player.text_label.text = "Вы уверены, что хотите прочитать это письмо?\n y - да \t n - нет"
	flag = true
