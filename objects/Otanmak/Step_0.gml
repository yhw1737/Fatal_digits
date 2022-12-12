if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
}
if !(x > 960 && x < room_width-960 && y > 540 && y < room_height-540){
	instance_destroy();
}