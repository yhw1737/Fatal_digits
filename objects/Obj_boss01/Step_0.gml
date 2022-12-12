if global.abilsel == false {
	if (b_checkCount<=0){
		for(var i=0;i<8;i++){
			var it = instance_create_depth(x,y,0,Obj_tanmak);
			it.direction = (360/8)*i+b_angle;
			it.speed = 200/room_speed;
			it.spd = 200/room_speed;
		}
		b_checkCount=room_speed*0.4;
		b_angle+=10;
	}
	if(b_checkCount>0){
		b_checkCount--;
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