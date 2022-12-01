if (b_checkCount<=0){
	for(var i=0;i<8;i++){
		var it = instance_create_depth(x,y,0,Obj_tanmak);
		it.direction = (360/8)*i;
		it.speed = 200/room_speed;
	}
	b_checkCount=room_speed;
}
if(b_checkCount>0){
	b_checkCount--;
}

if hit > 0
	hit--;

if hp <= 0 {
	instance_destroy();
}