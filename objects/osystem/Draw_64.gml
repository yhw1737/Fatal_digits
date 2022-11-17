if selection{
	draw_sprite(sLogo_110,0,0,0);
	draw_set_colour(c_aqua);
	draw_line_width(32,150,display_get_gui_width()-32,150,3);
	draw_text(50,200,view_yport);
	draw_set_colour(c_white);
}

//마우스 드로우
var in = 0;
if room == Room1 {
	in=1;
}
if room == Room1{
	for (var i = 0; i < height; i+=8) {
		if irandom(25) == 0 {
			draw_sprite_part(sprite_index, in, 0, i, width, 12, x - (Obj_system.x - view_wport/2) + random_range(-noise_range, noise_range), y - (Obj_system.y - view_hport/2) + i)
		}
		else {
			draw_sprite_part(sprite_index, in, 0, i, width, 12, x - (Obj_system.x - view_wport/2), y - (Obj_system.y - view_hport/2) + i)
		}
	}
}
else {
	for (var i = 0; i < height; i+=8) {
		if irandom(25) == 0 {
			draw_sprite_part(sprite_index, in, 0, i, width, 12, x + random_range(-noise_range, noise_range), y+ i)
		}
		else {
			draw_sprite_part(sprite_index, in, 0, i, width, 12, x, y + i)
		}
	}
}