draw_hp(Obj_player.exp_c, Obj_player.exp_m, display_get_gui_width()/2, display_get_gui_height()-160, 64, 8, c_white, c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font1);
draw_text(display_get_gui_width()/2, display_get_gui_height()-160,Obj_player.level);
draw_set_halign(fa_left);
draw_set_valign(fa_top);