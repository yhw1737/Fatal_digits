if global.abilsel == false {
	if delay <= 0 {
		var it = instance_create_depth(x,y,0,Obj_tanmak31);
		it.direction = point_direction(x,y,Obj_player.x,Obj_player.y);
		it.speed = 800/room_speed;
		it.spd = 800/room_speed;
		delay = room_speed*0.4;
	}
	if b_delay <= 0 {
		if (b_checkCount<=0){
			for(var i=0;i<10;i++){
				var it = instance_create_depth(x,y,0,Obj_tanmak31);
				it.direction = 36*i+b_angle;
				it.speed = 150/room_speed;
				it.spd = 150/room_speed;
			}
			b_checkCount=room_speed*0.2;
			b_angle+=5;
			if b_angle >= 360 {
				b_delay = room_speed*10;
				b_angle -= 360;
			}
		}
	}
	if(b_checkCount>0){
		b_checkCount--;
	}
	if delay > 0 {
		delay--;
	}
	if b_delay > 0 {
		b_delay--;
	}
	if Obj_player.dead = false {
	speed = spd;
	direction += angle_difference(point_direction(x,y,Obj_player.x,Obj_player.y), direction) / turn;

	}
	else {
		speed = 0;
	}
	if hit > 0
		hit--;

	if hp <= 0 {
		instance_destroy();
	}
}
else {
	speed = 0;
}