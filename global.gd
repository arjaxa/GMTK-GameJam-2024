extends Node

@onready var damage_text = $UI/CanvasLayer/Panel3/VBoxContainer/DamageText
@onready var debt_text = $UI/CanvasLayer/Panel3/VBoxContainer/DebtText

var mousePoint: Vector2
var cooldown = true
var mainCharX = 0
var mainCharY = 0
var damage = 0
var debt = 0
var time = 0
var collectables = 0
var hasWon = false

func damage_taken(v):
	damage += v

func reset():
	cooldown = true
	damage = 0
	debt = 0
