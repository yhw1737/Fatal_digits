if hp > maxhp/2 {
	draw_self();
}
else if object_index != Obj_boss01 && object_index != Obj_boss02 && object_index != Obj_boss03{
	var v, w, h;
	w = sprite_width*1.5;
	h = sprite_height*1.5;
	var surf = surface_create(w,h);
	surface_set_target(surf);
	draw_sprite_ext(sprite_index,image_index, w/2 - 3,h/2, image_xscale, image_yscale, image_angle, c_aqua, image_alpha);
	draw_sprite_ext(sprite_index,image_index,w/2 + 3,h/2, image_xscale, image_yscale, image_angle, c_fuchsia, image_alpha);
	draw_sprite_ext(sprite_index,image_index,w/2, h/2, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	surface_reset_target();
	for (var i = 0; i < h; i+=v) {
		v = irandom_range(2,5);
		var r_r;
		if irandom(room_speed/4) = 0{
			r_r = random_range(-10,10);
		}
		else {
			r_r = 0;
		}
		draw_set_alpha(0.5);
		draw_surface_part(surf,0,i,w,v,x-w/2+r_r,y-h/2 + i);
		draw_set_alpha(1);
	}
	surface_free(surf);
}
else {
	draw_self();
}
if hit > 0 {
	if irandom(room_speed/12) == 0{
		draw_sprite(Sprite5,irandom(7),x+random_range(-sprite_width,sprite_width),y+random_range(-sprite_height,sprite_height));
	}
	hit--;
}