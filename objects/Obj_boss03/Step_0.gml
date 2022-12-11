if global.abilsel == false {
	if delay <= 0 {
		for(var i=0;i<3;i++){
			var it = instance_create_depth(x,y,0,Obj_tanmak);
			it.direction = point_direction(x,y,Obj_player.x,Obj_player.y)-3+3*i;
			it.speed = 1000/room_speed;
			it.spd = 1000/room_speed;
		}
		delay = room_speed*0.25;
	}
	if (b_checkCount<=0){
		for(var i=0;i<8;i++){
			var it = instance_create_depth(x,y,0,Obj_tanmak);
			it.direction = (360/8)*i+b_angle;
			it.speed = 200/room_speed;
			it.spd = 200/room_speed;
		}
		b_checkCount=room_speed*0.25;
		b_angle+=10;
	}
	if(b_checkCount>0){
		b_checkCount--;
	}
	if hit > 0
		hit--;
	if delay > 0
		delay--;
	if hp <= 0 {
		instance_destroy();
		global.clear = true;
		Obj_player.dead = true;
	}
}