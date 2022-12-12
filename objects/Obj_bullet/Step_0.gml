if !(x > 960 && x < room_width-960 && y > 540 && y < room_height-540){
	instance_destroy();
}
if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
	if Obj_player.qactive > 0 && instance_exists(Oenemy){
		var target = instance_in_range(5,450,90,Oenemy);
		if target != noone {
			motion_add(point_direction(x,y,target.x,target.y),0.45);
		}
	}
	speed = clamp(speed,0,spd);
	image_angle = direction;
}