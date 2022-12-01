function circle_shot(angle,number,obj){
	var aa=argument0;
	var nn=argument1;
	var oo=argument2;
	var dir=360/nn;
	var delay_=0.2*room_speed;
	
	repeat(nn){
		var ins;
		ins=instance_create_depth(Obj_boss1.x,Obj_boss1.y,0,Obj_tanmak);
		ins.speed=1;
		ins.direction=dir+aa;
		dir+=360/nn;
	}
}