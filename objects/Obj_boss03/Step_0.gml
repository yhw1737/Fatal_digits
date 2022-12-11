if global.abilsel == false {
	if delay = 0 {

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
	if delay > 0 {
		delay--;
	}
	if hit > 0
		hit--;

	if hp <= 0 {
		instance_destroy();
	}
}