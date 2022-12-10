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
			switch(image_index){
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
					var A = Accuracy(accuracy);
					it.image_angle = image_angle+A-(A/2)*i;
					it.direction = image_angle+A-(A/2)*i;
					it.speed = 900/room_speed;
					it.spd = 900/room_speed;
				}
			break;
			case 2:
				var target = instance_in_range(5,450,10,Oenemy);
				if target != noone {
					objobj[0,0] = x;
					objobj[0,1] = y;
					for(var i=1;i<10;i++){
						objobj[i,0] = noone;
						objobj[i,1] = noone;
					}
					eff = room_speed*0.25;
					var it = instance_create_depth(target.x,target.y,0,Obj_bullet_3);
					it.dmg = critic;
					objobj[1,0] = target.x;
					objobj[1,1] = target.y;
					//instance_deactivate_object(target);
					for(var i=2;i<=plevel;i++){
						/*
						instance_nearest(objobj[i-1,0],objobj[i-1,1],Oenemy);
						if !instance_exists(target) {break;}
						if point_distance(x,y,target.x,target.y) > 150 {break;}
						var it = instance_create_depth(target.x,target.y,0,Obj_bullet_3);
						it.dmg = critic;
						objobj[i,0] = target.x;
						objobj[i,1] = target.y;
						*/
						with(target){
							target = instance_nearest(200,200,360,Oenemy);
							if !instance_exists(target) {break;}
							if point_distance(x,y,target.x,target.y) > 150 {break;}
							var it = instance_create_depth(target.x,target.y,0,Obj_bullet_3);
							it.dmg = critic;
							objobj[i,0] = target.x;
							objobj[i,1] = target.y;
						}
						//instance_deactivate_object(target);
					}
					//instance_activate_object(Oenemy);
				}
				maxspd = maxspd_*0.75;
			break;
			case 3:
				var i_a = image_angle+random_range(-Accuracy(accuracy),Accuracy(accuracy));
				var it = instance_create_depth(x,y,0,Obj_bullet_4);
				it.dmg = critic;
				it.image_angle = i_a;
				it.direction = i_a;
				it.speed = 2250/room_speed;
				it.spd = 2250/room_speed;
			break;
			}
		}
	}
	else{
		maxspd = maxspd_;
	}
	//skill
	if mouse_check_button_pressed(mb_right){
		if delay_2 <= 0 {
			switch(image_index){
				case 0:
				if level >= 0 {
					repeat(8){
						var it = instance_create_depth(x,y,0,Obj_udo);
						var rd = random(360);
						it.direction = rd;
						it.image_angle = rd;
						it.speed = 3;
						var critic = 10+4*floor(min(3,(level-14))/3);
						if irandom(99) < critper{
							critic*=critdmg;
						}
						it.dmg = critic;
					}
					delay_2 = room_speed*1;
				}
				break;
			}
		}
	}
	if keyboard_check_pressed(ord("E")){
		if delay_3 <= 0 {
			switch(image_index){
				case 0:
				if level >= 0 {
					dead = true;
					hit = room_speed*1.5;
					alarm_[0] = room_speed*1.5;
					delay_3 = room_speed*(15-min(4,(level-7)));
				}
				break;
			}
		}
	}
	//

	if exp_c >= exp_m{
		exp_c-=exp_m;
		level++;
		if (level % 6 == 0){
			plevel++;
		}
		exp_m*=1.1;
		exp_m+=1;
		floor(exp_m);
		global.abilsel = true;
		var a = -1,b = -1;
		for(var i=-1;i<2;i++){
			var it = instance_create_depth(Obj_system.x+480*i,Obj_system.y,-300,Object14);
			var ir = irandom(sprite_get_number(Sprite15) - 1);
			while(ir == a || ir == b){
				ir = irandom(sprite_get_number(Sprite15) - 1);
			}
			it.image_index = ir;
			if i == -1{
				a = ir;
			}
			if i == 0 {
				b = ir;
			}
		
		}
		if image_index = 0 {
			recov+=0.08;
		}
		if level == 10 {
			Obj_system.boss = 3*room_speed;
		}
	}

	if delay > 0
	delay--;
	if delay_2 > 0
	delay_2--;
	if delay_3 > 0
	delay_3--;
	if delay_4 > 0
	delay_4--;

	if eff > 0{
		eff--;
	}
	/*
	else{
		for(var i=1;i<10;i++){
			objobj[i,0] = noone;
			objobj[i,1] = noone;
		}
	}
	*/
	objobj[0,0] = x;
	objobj[0,1] = y;

	if hp < maxhp {
		hp+=(maxhp*recov)/room_speed;
	}
	else {
		hp = maxhp;
	}

	if hit > 0 
	hit--;
	
	if alarm_[0] > -1 {
	if alarm_[0] == 0 {
		dead = false;
	}
	alarm_[0]--;
	}

}
else {
	speed = 0;
}