extends Control

var player

func _draw():
	var gap = 15
	var textures = preload('res://building/building.gd').textures
	var delete = preload('res://planet_ui/delete_icon.png')


	if is_instance_valid(player.current_building):
		draw_rect(Rect2(Vector2(-3, 0), Vector2(10, 10)), Color(1, 1, 1))
		draw_texture(delete, Vector2(gap - 3, 0))
		# draw_rect(Rect2(Vector2(gap - 3, 0), Vector2(10, 10)), Color(0, 0, 0))
		draw_rect(Rect2(Vector2(2 * gap - 3, 0), Vector2(10, 10)), Color(1, 1, 1))
	else:
		var types = ['defense', 'income', 'attack']
		for index in range(len(types)):
			draw_texture(textures[types[index]], Vector2(gap * index - 3, 0))
