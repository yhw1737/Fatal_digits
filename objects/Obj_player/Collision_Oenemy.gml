if global.abilsel = false && dead = false{
	if hit <= 0{
		if image_index == 1 {
			hp -= 25*max((hp/maxhp),0.5);
		}
		else {
			hp -= 25;
			hit = room_speed*1.5;
		}
	}
	if hp <= 0{
		dead = true;
	}
}