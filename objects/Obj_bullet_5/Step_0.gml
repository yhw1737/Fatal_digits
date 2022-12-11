
if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
	if heyhey != 0{
		speed = 0;
		hey--;
		if !instance_exists(heyhey){
			hey = 0;
		}
		else{
			x+=heyhey.x-heyhey.xprevious;
			y+=heyhey.y-heyhey.yprevious;
		}
		if hey <= 0{
			with(Oenemy){
				if point_distance(x,y,other.x,other.y) <= 25{
					hp-=other.dmg;
					tazer = tt;
				}
			}
		instance_create_depth(x,y,-100,Object18);
		instance_destroy();
		}
	}
}