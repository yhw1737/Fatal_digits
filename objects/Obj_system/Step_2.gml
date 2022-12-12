if global.abilsel = true {
	if alarm[0] > 0 {
		alarm[0]++;
	}
}
if global.clear = false && (Obj_player.dead = false || (Obj_player.dead = true && Obj_player.alarm_[0] > 0))
time++;