if global.abilsel = false && (dead = false || (dead = true && alarm_[0] != -1)){
	exp_c+=other.exp_;
	if image_index == 0 && level >= 10 {
		exp_c+=other.exp_*0.25;
	}
	audio_play_sound(Sound1,0,0);
	instance_destroy(other);
	if exp_c >= exp_m{
		audio_play_sound(Sound4_click,0,0);
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
			recov+=0.0008;
			if level == 10
			dmg+=3;
			if level == 25
			dmg+=10;
		}
		if image_index == 1 {
			if level == 3 {
				maxhp+=50;
				hp+=50;
			}
			if level == 17 {
				critper+=20;
			}
			if level == 25{
				critdmg+=1;
			}
		}
		if level == 10 || level == 20 || level == 30{
			Obj_system.boss = 3*room_speed;
		}
	}
}