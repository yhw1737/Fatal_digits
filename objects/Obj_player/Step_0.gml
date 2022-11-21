move_by(spd, maxspd);

image_angle += angle_difference(point_direction(x,y,mouse_x,mouse_y), image_angle) / 4;

if delay > 0
delay--;

//shoot
if mouse_check_button(mb_left){
	if delay <= 0{
		var critic = dmg;
		if irandom(100) <= critper{
			critic*=critdmg;
		}
		delay = attspd;
		var i_a = image_angle+random_range(-Accuracy(accuracy),Accuracy(accuracy));
		var it = instance_create_depth(x,y,0,Obj_bullet);
		it.dmg = critic;
		it.image_angle = i_a;
		it.direction = i_a;
		it.speed = 30;
	}
	maxspd = maxspd_*0.5;
}
else{
	maxspd = maxspd_;
}
//