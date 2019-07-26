extends Node2D

export var planetRadius = 100
export (int) var playerNumber
var player
var angle = 0
export var income = 0 
var money = 0 

func _ready():
	player = preload("res://player.gd").new()
	add_child(player)
	player.position.y -= planetRadius
	player.playerNumber = playerNumber
	$Label.rect_position.x -= $Label.rect_size.x / 2
	$Label.rect_position.y -= $Label.rect_size.y / 2

func _draw():
	draw_circle(Vector2(0, 0), planetRadius, Color(0, 255, 0))

func _process(delta):
	# player.position = player.position.rotated(0.5 * delta)
	# player.rotation += 0.5 * delta
	money += income * delta
	$Label.text = str(int(money))
