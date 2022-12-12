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
				shoot++;
				with(Obj_bot){
					var i_a = image_angle+random_range(-Accuracy(other.accuracy),Accuracy(other.accuracy));
					var it = instance_create_depth(x,y,0,Obj_bullet);
					it.dmg = critic;
					it.image_angle = i_a;
					it.direction = i_a;
					it.speed = 1800/room_speed;
					it.spd = 1800/room_speed;
					other.shoot++;
				}
				while(shoot >= 3){
					shoot-=3;
					if level >= 3 {
						repeat(1+2*floor(min(1,level/17))){
							var it = instance_create_depth(x,y,0,Obj_udo);
							var rd = random(360);
							it.direction = rd;
							it.image_angle = rd;
							it.speed = 3;
							var critic = 10;
							if irandom(99) < critper{
								critic*=critdmg;
							}
							it.dmg = critic;
						}
					}
				}
			break;
			case 1:
				for(var i=0;i<b_n;i++){
					var it = instance_create_depth(x,y,0,Obj_bullet_2);
					it.dmg = critic;
					var A = Accuracy(accuracy);
					it.image_angle = image_angle+A-(A/((b_n-1)/2))*i;
					it.direction = image_angle+A-(A/((b_n-1)/2))*i;
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
					instance_deactivate_object(target);
					for(var i=2;i<=plevel;i++){
						instance_nearest(objobj[i-1,0],objobj[i-1,1],Oenemy);
						if !instance_exists(target) {break;}
						if point_distance(x,y,target.x,target.y) > 150 {break;}
						var it = instance_create_depth(target.x,target.y,0,Obj_bullet_3);
						it.dmg = critic;
						objobj[i,0] = target.x;
						objobj[i,1] = target.y;
						instance_deactivate_object(target);
					}
					instance_activate_object(Oenemy);
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
		switch(image_index){
			case 0:
			if delay_3 <= 0 {
				if level >= 14 {
					var n = 8;
					if level >= 25
					n = 12;
					repeat(n){
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
					delay_3 = room_speed*8;
					with(Obj_bot){
						repeat(3+floor(min(2,(other.level-21))/3)){
							var it = instance_create_depth(x,y,0,Obj_udo);
							var rd = random(360);
							it.direction = rd;
							it.image_angle = rd;
							it.speed = 3;
							var critic = 10+4*floor(min(3,(other.level-14))/3);
							it.dmg = critic;
						}
					}
				}
			}
			break;
			case 1:
			if delay_2 <= 0 {
				if level >= 7 {
					repeat(4+floor(min(4,(level-7))/3)){
						var it = instance_create_depth(x,y,0,Obj_bullet_5);
						var rd = image_angle+random_range(-20,20);
						it.direction = rd;
						it.image_angle = rd;
						it.spd = 300/room_speed;
						it.speed = 300/room_speed;
						var critic = 5+1.2*dmg;
						if irandom(99) < critper{
							critic*=critdmg;
						}
						it.dmg = critic;
							
						it.tt = room_speed*(1+0.1*floor(min(4,(level-7))/3));
					}
					delay_2 = room_speed*(13-0.5*floor(min(4,(level-7))/3));
				}
			}
			break;
		}
	}
	if keyboard_check_pressed(ord("E")){
		switch(image_index){
			case 0:
			if delay_2 <= 0 {
				if level >= 7 {
					dead = true;
					hit = room_speed*1.5;
					alarm_[0] = room_speed*1.5;
					delay_2 = room_speed*(15-min(4,(level-7)));
				}
			}
			break;
			case 1:
			if delay_3 <= 0 {
				if level >= 14 {
					if instance_exists(Obj_bar)
						instance_destroy(Obj_bar);
					var it = instance_create_depth(x,y,0,Obj_bar);
					it.hp = 180+40*floor(min(3,(level-7))/3);
					it.image_angle = image_angle;
					delay_3 = room_speed*10;
				}
			}
			break;
		}
	}
	if keyboard_check_pressed(ord("Q")){
		if delay_4 <= 0 {
			switch(image_index){
				case 0:
				if level >= 21 {
					qactive = room_speed*(8+floor(min(2,(level))/3));
					var it = instance_create_depth(x,y,1,Obj_bot);
					it.a = 1;
					instance_create_depth(x,y,1,Obj_bot);
					delay_4 = room_speed*(35-5*floor(min(2,(level-21)/3)));
				}
				break;
				case 1:
				if level >= 21 {
					var it = instance_create_depth(x,y,0,Obj_bullet_6);
					it.direction = image_angle;
					it.image_angle = image_angle;
					var critic = 2.5*dmg;
					if irandom(99) < critper{
						critic*=critdmg;
					}
					it.dmg = critic;
					it.spd = 1000/room_speed;
					it.speed = 1000/room_speed;
					delay_4 = room_speed*(25-3*floor(min(2,(level-21)/3)));
				}
				break;
			}
		}
	}
	//
	if image_index = 1  {
		if ddelay > 0{
			ddelay--;
		}
		else{
			if level >= 3{
				var ll = 8;
				if level >= 17 {
					ll = 16;
				}
				for(var i=0;i<ll;i++){
					var it = instance_create_depth(x,y,0,Obj_bullet_2);
					var critic = dmg;
						if irandom(99) < critper{
							critic*=critdmg;
						}
					it.dmg = critic;
					var A = (360/ll)*i;
					it.image_angle = image_angle+A;
					it.direction = image_angle+A;
					it.speed = 900/room_speed;
					it.spd = 900/room_speed;
				}
				ddelay = 5*room_speed;
				if level >= 10 {
					ddelay = 3*room_speed;
				}
				if level >= 17 {
					ddelay = 1.5*room_speed;
				}
			}
		}
		if dddelay > 0{
			dddelay--;
		}
		else{
			if level >= 25{
				var ll = 8;
				for(var i=0;i<ll;i++){
					var it = instance_create_depth(x,y,0,Obj_bullet_2);
					var critic = dmg;
						if irandom(99) < critper{
							critic*=critdmg;
						}
					it.dmg = critic;
					var A = (360/ll)*i;
					it.image_angle = image_angle+A;
					it.direction = image_angle+A;
					it.speed = 900/room_speed;
					it.spd = 900/room_speed;
				}
				dddelay = room_speed;
			}
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
	
	hp+=(maxhp*recov)/room_speed;
	hp = clamp(hp, -1, maxhp);

	if hit > 0 
	hit--;
	
	if alarm_[0] > -1 {
	if alarm_[0] == 0 {
		dead = false;
	}
	alarm_[0]--;
	}
	if qactive > -1 {
		qactive--;
	}


}
else {
	speed = 0;
}