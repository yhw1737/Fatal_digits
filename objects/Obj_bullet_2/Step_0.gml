if dmg > 0
dmg-=15/room_speed;
if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
}