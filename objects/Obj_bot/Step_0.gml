if global.abilsel = false{
	if Obj_player.qactive <= 0 {
		instance_destroy();
	}
	x+=(Obj_player.x+lengthdir_x(38,Obj_player.image_angle+120*(a+1)) - x)/4;
	y+=(Obj_player.y+lengthdir_y(38,Obj_player.image_angle+120*(a+1)) - y)/4;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	direction = image_angle
}