// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
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