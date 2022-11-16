move_by(spd, maxspd);

image_angle = point_direction(x,y,mouse_x,mouse_y);

if delay > 0
delay--;

if mouse_check_button(mb_left){
	if delay = 0{
		delay = attspd;
		var i_a = image_angle+random_range(-Accuracy(accuracy),Accuracy(accuracy));
		var it = instance_create_depth(x,y,0,Obj_bullet);
		it.image_angle = i_a;
		it.direction = i_a;
		it.speed = 20;
	}
	maxspd = maxspd_*0.5;
}
else{
	maxspd = maxspd_;
}