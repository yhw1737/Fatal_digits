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
	friction = 0;
	hspeed = clamp(hspeed,-maxspd,maxspd);
	vspeed = clamp(vspeed,-maxspd,maxspd);
}
else {
	friction = 0.25;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

if delay > 0
delay--;