if Obj_player.dead = false || (Obj_player.dead = true && Obj_player.alarm_[0] == -1){
draw_hp(Obj_player.exp_c, Obj_player.exp_m, display_get_gui_width()/2, display_get_gui_height()-160, 64, 8, c_white, c_white);
draw_sprite_ext(sprite,0,60,display_get_gui_height()-100,0.1,0.1,0,c_white,0.5+0.5*(Obj_player.delay_2 <= 0));
draw_sprite_ext(sprite,1,130,display_get_gui_height()-100,0.1,0.1,0,c_white,0.5+0.5*(Obj_player.delay_3 <= 0));
draw_sprite_ext(sprite,2,200,display_get_gui_height()-100,0.1,0.1,0,c_white,0.5+0.5*(Obj_player.delay_4 <= 0));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font1);
draw_text(display_get_gui_width()/2, display_get_gui_height()-160,Obj_player.level);
if (Obj_player.delay_2 > 0){
	draw_text(60, display_get_gui_height()-100,Obj_player.delay_2);//floor(Obj_player.delay_2/room_speed)+1);
}
if (Obj_player.delay_3 > 0){
	draw_text(130, display_get_gui_height()-100,floor(Obj_player.delay_3/room_speed)+1);
}
if (Obj_player.delay_4 > 0){
	draw_text(200, display_get_gui_height()-100,floor(Obj_player.delay_4/room_speed)+1);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}