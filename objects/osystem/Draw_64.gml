

//셀렉션 드로우
if selection {
	var cx,cy;
	draw_sprite(sLogo_110,0,0,0);
	draw_sprite(Spr_player, obj, display_get_gui_width()/2, display_get_gui_height()/2);
	draw_sprite(Sprite11, 0, display_get_gui_width()-200,display_get_gui_height()/2);
	draw_sprite(Sprite12, 0, display_get_gui_width()/2,display_get_gui_height()-200);
	draw_sprite_ext(Sprite11, 0, 200,display_get_gui_height()/2,-1,1,0,c_white,1);
	draw_line_width(32,150,display_get_gui_width()-32,150,3);
	cx = display_get_gui_width()/2;
	cy = display_get_gui_height()-200;
	if mouse_check_button_pressed(mb_left){
		if mouse_x >= cx-207 && mouse_x <= cx+207 && mouse_y >= cy-87 && mouse_y <= cy+87{
			objselected = true;
			selection = false;
			instance_activate_all();
			Obj_player.type = obj;
			Change(Obj_player,obj);
		}
	}
}

//마우스 드로우
var dmouse_x = device_mouse_x_to_gui(0);
var dmouse_y = device_mouse_y_to_gui(0);

if room == Room1{
	for (var i = 0; i < height; i+=8) {
		if irandom(25) == 0 {
			draw_sprite_part(Sprite7, 1, 0, i, width, 12, dmouse_x - 8 + random_range(-noise_range, noise_range), dmouse_y - 7 + i)
		}
		else {
			draw_sprite_part(Sprite7, 1, 0, i, width, 12, dmouse_x - 8, dmouse_y - 7 + i)
		}
	}
}
else {
	for (var i = 0; i < height; i+=8) {
		if irandom(25) == 0 {
			draw_sprite_part(Sprite7, 0, 0, i, width, 12, x + random_range(-noise_range, noise_range), y+ i)
		}
		else {
			draw_sprite_part(Sprite7, 0, 0, i, width, 12, x, y + i)
		}
	}
}