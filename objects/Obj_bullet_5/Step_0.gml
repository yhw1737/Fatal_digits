if !(x > 960 && x < room_width-960 && y > 540 && y < room_height-540){
	instance_destroy();
}
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
				if place_meeting(x,y,other){
					hp-=other.dmg;
					tazer = other.tt;
				}
			}
		instance_create_depth(x,y,-100,Object18);
		instance_destroy();
		}
	}
}