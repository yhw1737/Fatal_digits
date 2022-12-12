if global.abilsel {
	var d = depth;
	depth = -1;
	var d_w = display_get_gui_width();
	var d_h = display_get_gui_height();
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(x-d_w/2,y-d_w/2,x+d_w/2,y+d_h/2,false);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	depth = d;
}
else if boss > -1 && Obj_player.level == 30{
	if irandom(room_speed/24) == 0{
		draw_set_alpha(0.1);
		draw_rectangle(room_width/2-500,room_height/2-500,room_width/2+500,room_height/2+500,false);
		draw_set_alpha(1);
		draw_sprite(Sprite5,irandom(7),room_width/2+random_range(-500,500), room_height/2+random_range(-500,500));
	}
}