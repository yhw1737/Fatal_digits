var b;
for (var i = 0; i < height; i+=b) {
	b = 1;
	if irandom(room_speed/3) == 0 {
		draw_sprite_part(sprite_index, image_index, 0, i, width, b, x + choose(-1,1)*(random(5)), y + i)
	}
	else {
		draw_sprite_part(sprite_index, image_index, 0, i, width, b, x, y + i)
	}
}