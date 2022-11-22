
function Accuracy(int){
	return 1500/(100+int);
}
function draw_glitch(int){
	draw_sprite_ext(sprite_index, 1, x-int, y, image_xscale, image_yscale, image_angle, c_aqua, image_alpha);
	draw_sprite_ext(sprite_index, 2, x+int, y, image_xscale, image_yscale, image_angle, c_fuchsia, image_alpha);
	draw_self();
}
function move_by(spd,maxspd){
	var r = keyboard_check(ord("D")), l = keyboard_check(ord("A")), u = keyboard_check(ord("W")), d = keyboard_check(ord("S"));

	if (r || l || u || d){
		if (r){
			motion_add(0, spd);
		}
		if (l){
			motion_add(180, spd);
		}
		if (u){
			motion_add(90, spd);
		}
		if (d){
			motion_add(270, spd);
		}
		if (!(r || l) || (r && l)){
			if abs(hspeed) < 0.25{
				hspeed = 0;
			}
			hspeed -= sign(hspeed)*(0.25);
		}
		if (!(u || d) || (u && d)){
			if abs(vspeed) < 0.25{
				vspeed = 0;
			}
			vspeed -= sign(vspeed)*(0.25);
		}
		friction = 0;
		speed = clamp(speed,-maxspd,maxspd);
	}
	else {
		friction = 0.25;
	}
}
//
function draw_hp(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	//draw_hp(hp, max, x, y, radius, thickness, color1, color2);
	var _i, _x, _y, _r, _t;

	_x = argument2;
	_y = argument3;
	_r = argument4;
	_t = argument5;

	draw_set_color(argument6);
	draw_set_alpha(1);

	draw_primitive_begin(pr_trianglestrip);

	for (_i = 0; _i <= round(360 *(argument0 /argument1)); _i += 1) {
	    draw_vertex(_x +lengthdir_x(_r, 90 -_i), _y +lengthdir_y(_r, 90 -_i));
	    draw_vertex(_x +lengthdir_x(_r -_t, 90 -_i), _y +lengthdir_y(_r -_t, 90 -_i));
	}

	draw_primitive_end();

	draw_set_color(argument7);
	draw_set_alpha(1);
	draw_circle(_x, _y, _r, true);
	draw_circle(_x, _y, _r -_t, true);



}
