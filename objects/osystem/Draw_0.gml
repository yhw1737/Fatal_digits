x = mouse_x;
y = mouse_y;
var v;
var r = 0;
if active = true{
	for (var i = 0; i < s_g_h; i+=v) {
		v = random_range(200,300);
		if r == 0 || r == 2 || r == 4{
			draw_surface_part(surf, 0, i, s_g_w, v, random_range(-1000,1000), i);
		}
		else {
			draw_surface_part(surf, 0, i, s_g_w, v, 0 , i);
		}
		r++;
	}
	c++;
	if c > room_speed{
		room_goto_next();
		active = false;
	}
}