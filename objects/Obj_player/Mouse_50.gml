if delay = 0{
	delay = attspd;
	var i_a = image_angle+random_range(-Accuracy(accuracy),Accuracy(accuracy));
	var it = instance_create_depth(x,y,0,Obj_bullet);
	it.image_angle = i_a;
	it.direction = i_a;
	it.speed = 20;
}