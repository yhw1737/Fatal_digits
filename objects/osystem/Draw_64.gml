

//셀렉션 드로우
if selection {
	var cx,cy;
	draw_sprite(sLogo_110,0,0,0);
	if alarm[0] == -1 && alarm[1] == -1{
		draw_sprite(Spr_player, obj, display_get_gui_width()/2, display_get_gui_height()/2);
	}
	else {
		var v;
		for (var i = 0; i < sprite_get_height(Spr_player); i+=v) {
			v = choose(10,15,25);
			if irandom(room_speed/4) = 0{
				draw_sprite_part(Spr_player, obj, 0, i, sprite_get_width(Spr_player), v, display_get_gui_width()/2 - sprite_get_width(Spr_player)/2 + choose(-1,1)*(irandom(20)+power(max(irandom(100)-85,0),2)), display_get_gui_height()/2 - sprite_get_height(Spr_player)/2 + i)
			}
			else {
				draw_sprite_part(Spr_player, obj, 0, i, sprite_get_width(Spr_player), v, display_get_gui_width()/2 - sprite_get_width(Spr_player)/2, display_get_gui_height()/2 - sprite_get_height(Spr_player)/2 + i)
			}
		}
	}
	if obj > 1 {
		draw_sprite_ext(Spr_lock,0, display_get_gui_width()/2, display_get_gui_height()/2,0.3,0.3,0,c_white,0.75);
	}
	draw_sprite(Sprite11, 0, display_get_gui_width()-200,display_get_gui_height()/2);
	draw_sprite_ext(Sprite11, 0, 200,display_get_gui_height()/2,-1,1,0,c_white,1);
	draw_line_width(32,150,display_get_gui_width()-32,150,3);
	cx = display_get_gui_width()/2;
	cy = display_get_gui_height()-200;
	if mouse_x >= cx-157 && mouse_x <= cx+157 && mouse_y >= cy-36 && mouse_y <= cy+36{
		var v;
		for (var i = 0; i < sprite_get_height(Sprite12); i+=v) {
			v = choose(10,15,25);
			if irandom(room_speed/4) = 0{
				draw_sprite_part(Sprite12, 0, 0, i, sprite_get_width(Sprite12), v, display_get_gui_width()/2 - sprite_get_width(Sprite12)/2 + choose(-1,1)*(irandom(15)+power(max(irandom(100)-90,0),2)), display_get_gui_height() - 200 - sprite_get_height(Sprite12)/2 + i)
			}
			else {
				draw_sprite_part(Sprite12, 0, 0, i, sprite_get_width(Sprite12), v, display_get_gui_width()/2 - sprite_get_width(Sprite12)/2, display_get_gui_height() - 200 - sprite_get_height(Sprite12)/2 + i)
			}
		}
	}
	else {
		draw_set_alpha(0.5);
		draw_sprite(Sprite12, 0, display_get_gui_width()/2,display_get_gui_height()-200);
		draw_set_alpha(1);
	}
	if mouse_check_button_pressed(mb_left){
		cx = display_get_gui_width()/2;
		cy = display_get_gui_height()-200;
		if mouse_x >= cx-157 && mouse_x <= cx+157 && mouse_y >= cy-36 && mouse_y <= cy+36 && obj < 2{
			objselected = true;
			selection = false;
			instance_activate_all();
			Obj_player.image_index = obj;
			switch(obj){
				case 1:
					with(Obj_player){
						attspd = 1.5*room_speed;
						maxspd = 180/room_speed;
						spd = maxspd*0.035;
						maxspd_ = maxspd;
						accuracy = 0;
						dmg = 15;
						hp = 150;
						maxhp = hp;
						def = 0;
						recov = 0;
						critdmg = 1;
						critper = 0;
						b_n = 5;
						dmg_ = dmg;
						attspd_ = attspd;
					}
					Obj_system.sprite = Sprite29;
				break;
				case 2:
					with(Obj_player){
						attspd = 0.25*room_speed;
						maxspd = 270/room_speed;
						spd = maxspd*0.05;
						maxspd_ = maxspd;
						accuracy = 0;
						dmg = 2.5;
						hp = 100;
						maxhp = hp;
						def = 0;
						recov = 0;
						critdmg = 1.1;
						critper = 10;
						dmg_ = dmg;
						attspd_ = attspd;
					}
				break;
				case 3:
					with(Obj_player){
						attspd = 1.5*room_speed;
						maxspd = 180/room_speed;
						spd = maxspd*0.035;
						maxspd_ = maxspd;
						accuracy = 1400;
						dmg = 30;
						hp = 100;
						maxhp = hp;
						def = 0;
						recov = 0;
						critdmg = 2;
						critper = 10;
						dmg_ = dmg;
						attspd_ = attspd;
					}
				break;
			}
		}
		cx = 200;
		cy = display_get_gui_height()/2;
		if mouse_x >= cx-46 && mouse_x <= cx+46 && mouse_y >= cy-65 && mouse_y <= cy+65{
			charcn = true;
			alarm[0] = room_speed*0.5;
		}
		cx = display_get_gui_width() - 200;
		cy = display_get_gui_height()/2;
		if mouse_x >= cx-46 && mouse_x <= cx+46 && mouse_y >= cy-65 && mouse_y <= cy+65{
			charcn = true;
			alarm[1] = room_speed*0.5;
		}
	}
}

//마우스 드로우
var dmouse_x = device_mouse_x_to_gui(0);
var dmouse_y = device_mouse_y_to_gui(0);

if room == Room1 && objselected && global.abilsel = false{
	if object_exists(Obj_player){
		if Obj_player.dead = true && Obj_player.alarm_[0] == -1{
			if global.clear{
				draw_sprite(Sprite24,0,0,0);
			}
			else {
				draw_sprite(Sprite24,1,0,0);
				draw_set_halign(fa_right);
				draw_set_font(Font1);
				draw_text(245, 678, floor(min(100*(Obj_player.level/31),99)));
				draw_set_halign(fa_left);
			}
			draw_set_halign(fa_right);
			draw_set_font(Font1);
			draw_text(1920-200, 540+250, string("{0}min {1}sec",floor(Obj_system.time/(room_speed*60)),floor(Obj_system.time/room_speed)%60));
			draw_set_halign(fa_left);
			draw_sprite(Spr_player,obj,1920-300,1080/2);
			if mouse_check_button_pressed(mb_left){
				if dmouse_x > 189 && dmouse_x < 331 && dmouse_y > 742 && dmouse_y < 882{
					room_restart();
					objselected = false;
					selection = false;
					charcn = false;
					obj = 0;
					audio_stop_sound(Sound2_BGM);
				}
			}
		}
	}
	for (var i = 0; i < height; i+=8) {
		if irandom(room_speed/3) == 0 {
			draw_sprite_part(Sprite7, 1, 0, i, width, 12, dmouse_x - 8 + random_range(-noise_range, noise_range), dmouse_y - 7 + i)
		}
		else {
			draw_sprite_part(Sprite7, 1, 0, i, width, 12, dmouse_x - 8, dmouse_y - 7 + i)
		}
	}
}
else {
	for (var i = 0; i < height; i+=8) {
		if irandom(room_speed/3) == 0 {
			draw_sprite_part(Sprite7, 0, 0, i, width, 12, dmouse_x + random_range(-noise_range, noise_range), dmouse_y+ i)
		}
		else {
			draw_sprite_part(Sprite7, 0, 0, i, width, 12, dmouse_x, dmouse_y + i)
		}
	}
}