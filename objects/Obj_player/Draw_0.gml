if eff > 0 {
	for(var i=0;i<9;i++){
		if objobj[i+1,0] != noone{
			draw_line(objobj[i,0],objobj[i,1],objobj[i+1,0],objobj[i+1,1]);
		}
	}
}
if hit = false{
	draw_self();
}
else {
	var v;
	var surf = surface_create(72,72);
	surface_set_target(surf);
	draw_sprite_ext(sprite_index,image_index,36 - 3,36, image_xscale, image_yscale, image_angle, c_aqua, image_alpha);
	draw_sprite_ext(sprite_index,image_index,36 + 3,36, image_xscale, image_yscale, image_angle, c_fuchsia, image_alpha);
	draw_sprite_ext(sprite_index,image_index,36, 36, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	surface_reset_target();
	for (var i = 0; i < 72; i+=v) {
		v = irandom_range(2,5);
		var r_r;
		if irandom(room_speed/4) = 0{
			r_r = random_range(-10,10);
		}
		else {
			r_r = 0;
		}
		draw_set_alpha(0.5);
		draw_surface_part(surf,0,i,72,v,x-36+r_r,y-36 + i);
		draw_set_alpha(1);
	}
	surface_free(surf);
}
draw_set_alpha(0.2);
draw_rectangle(960, 540, room_width-960, room_height-540, true);
draw_set_alpha(1);
x = clamp(x, 960, room_width-960);
y = clamp(y, 540, room_width-540);
