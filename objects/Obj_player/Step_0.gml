if global.abilsel = false {
move_by(spd, maxspd);

image_angle += angle_difference(point_direction(x,y,mouse_x,mouse_y), image_angle) / 4;

//shoot
if mouse_check_button(mb_left){
	if delay <= 0{
		var critic = dmg;
		if irandom(99) < critper{
			critic*=critdmg;
		}
		delay = attspd;
		switch(type_){
		case 0:
			var i_a = image_angle+random_range(-Accuracy(accuracy),Accuracy(accuracy));
			var it = instance_create_depth(x,y,0,Obj_bullet);
			it.dmg = critic;
			it.image_angle = i_a;
			it.direction = i_a;
			it.speed = 1800/room_speed;
			it.spd = 1800/room_speed;
			maxspd = maxspd_*0.5;
		break;
		case 1:
			for(var i=0;i<b_n;i++){
				var it = instance_create_depth(x,y,0,Obj_bullet_2);
				it.dmg = critic;
				it.image_angle = image_angle+10-5*i;
				it.direction = image_angle+10-5*i;
				it.speed = 900/room_speed;
				it.spd = 900/room_speed;
			}
		break;
			
		}
	}
}
else{
	maxspd = maxspd_;
}
//

if exp_c >= exp_m{
	exp_c-=exp_m;
	level++;
	exp_m*=1.3;
	floor(exp_m);
	global.abilsel = true;
	for(var i=-1;i<2;i++){
		instance_create_depth(Obj_system.x+480*i,Obj_system.y,-300,Object14);
	}
}

if delay > 0
delay--;

}
else {
	speed = 0;
}