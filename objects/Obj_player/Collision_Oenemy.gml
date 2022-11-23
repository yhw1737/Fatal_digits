if global.abilsel = false{
if hit = false{
	hp -= 25;
	hit = true;
	alarm[0] = room_speed*1.5;
}
if hp <= 0{
	dead = true;
}
}