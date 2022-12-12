var up = 0, down = 1;
Obj_player.aaa[image_index]++;
switch(image_index){
	case 0:
		AttSpd(up, 1);
		Accuracy_(down, 1);
	break;
	case 1:
		Dmg(up, 1);
		AttSpd(down, 1);
	break;
	case 2:
		Move(up, 1.8);
		Crit_Chance(up, 1);
		Dmg(down, 1);
	break;
	case 3:
		Accuracy_(up, 1);
		Dmg(up, 1);
		Move(down, 0.6);
	break;
	case 4:
		Crit_Chance(up, 0.8);
		Crit_Dmg(up, 0.8);
	break;
	case 5:
		Crit_Dmg(up, 1);
		Dmg(up, 0.8);
	break;
}
global.abilsel = false;
with(Object14){
	instance_destroy();
}
