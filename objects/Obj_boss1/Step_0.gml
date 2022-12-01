event_inherited();
if(b_checkCount>10){
	move_towards_point(Obj_player.x,Obj_player.y,1);
	Obj_playerspace.x=Obj_player.x;
	Obj_playerspace.y=Obj_player.y;
}
else if(0<b_checkCount<=40){
	move_towards_point(Obj_playerspace.x,Obj_playerspace.y,30);
}

image_angle=point_direction(x,y,Obj_player.x,Obj_player.y);

if b_delay > 0
b_delay--;

//shoot
if (b_shotcount==0){
	if b_delay <= 0{
		b_delay = b_attspd;
		var i_a = image_angle
		var it = instance_create_depth(x,y,0,Obj_tanmak);
		it.image_angle = i_a;
		it.direction = i_a;
		it.speed = 10;
	}
	b_maxspd = b_maxspd_*0.5;
}
else{
	b_maxspd = b_maxspd_;
}



