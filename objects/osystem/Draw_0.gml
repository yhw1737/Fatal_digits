x = mouse_x;
y = mouse_y;
var v;
var r = 0;
if active = true{
	for (var i = 0; i < s_g_h; i+=v) {
		v = random_range(200,300);
		r++;
		if r == 0 || r = 1 || r = 3 || r = 10{
			draw_surface_part(surf, 0, i, s_g_w, v, random_range(-1000,1000), i);
		}
		else {
			draw_surface_part(surf, 0, i, s_g_w, v, 0 , i);
		}
	}
	c++;
	if c > room_speed{
		room_goto_next();
		active = false;
	}
}

//마우스 드로우
var in = 0;
if room == Room1 {
	in=1;
}
for (var i = 0; i < height; i+=8) {
	if irandom(25) == 0 {
		draw_sprite_part(sprite_index, in, 0, i, width, 12, x + random_range(-noise_range, noise_range), y + i)
	}
	else {
		draw_sprite_part(sprite_index, in, 0, i, width, 12, x, y + i)
	}
}