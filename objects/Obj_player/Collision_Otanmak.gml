if global.abilsel = false && dead = false{
	if hit = false{
		hp -= 25;
		hit = room_speed*1.5;
	}
	if hp <= 0{
		dead = true;
	}
	instance_destroy(other);
}