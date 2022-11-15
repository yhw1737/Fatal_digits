x = mouse_x;
y = mouse_y;
for (var i = 0; i < height; i+=8) {
	if irandom(25) == 0 {
		draw_sprite_part(sprite_index, 0, 0, i, width, 12, x + random_range(-noise_range, noise_range), y + i)
	}
	else {
		draw_sprite_part(sprite_index, 0, 0, i, width, 12, x, y + i)
	}
}
