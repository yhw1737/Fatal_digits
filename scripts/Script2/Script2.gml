// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function AttSpd(int, int2){
	with(Obj_player){
		if int = 0 {
			if attspd >= 0.1*room_speed {
				attspd -= int2*(0.02*room_speed);
			}
			else {
				attspd -= int2*((0.04*room_speed)/(0.1*room_speed-attspd));
			}
		}
		else {
			attspd+= int2*0.02;
		}
	}
}
function Accuracy_(int, int2){
	with(Obj_player){
		if int = 0 {
			accuracy += int2*20;
		}
		else {
			if accuracy >= 100 {
				accuracy -= int2*20;
			}
			else if accuracy >= 0 {
				accuracy -= int2*10;
			}
			else if accuracy >= -50 {
				accuracy -= int2*5;
			}
		}
	}
}
function Dmg(int, int2){
	with(Obj_player){
		if int = 0 {
			if dmg <= dmg_*2 {
				dmg += int2*(dmg_*0.1);
			}
			else {
				dmg += int2*((dmg_*2)/(dmg - dmg_));
			}
		}
		else {
			dmg-=int2*(dmg_*0.1);
		}
	}
}
function Move(int, int2){
	with(Obj_player){
		if int = 0 {
			maxspd = maxspd_;
			maxspd+=int2*(12/room_speed);
			spd+=int2*(0.6/room_speed);
			maxspd_ = maxspd;
		}
		else {
			maxspd = maxspd_;
			maxspd-=int2*(10/room_speed);
			spd-=int2*(0.5/room_speed);
			maxspd_= maxspd;
		}
	}
}
function Crit_Chance(int, int2){
	with(Obj_player){
		if int = 0 {
			critper+=int2*1;
			critper*=int2*1.2;
		}
		else {
			critper-=int2*2;
		}
	}
}
function Crit_Dmg(int, int2){
	with(Obj_player){
		if int = 0 {
			critdmg+=int2*0.075;
		}
		else {
			critdmg-=int2*0.075;
		}
	}
}
function instance_in_range(argument0, argument1, argument2, argument3){
	/// instance_in_range(min, max, fov, obj)
	var target, D, minimum, theta, delta;
	target = noone;
	minimum = argument1;

	with argument3 {

	  if id == other.id then continue;

	  D = point_distance(x, y, other.x, other.y);

	  if D < argument0 {
	    target = id;
	  } else {
	    theta = point_direction(other.x, other.y, x, y);
	    delta = min(abs(other.image_angle - theta), 360 - abs(other.image_angle - theta));
	    if (D <= minimum) and (delta <= 0.5 * argument2) {
	      minimum = D;
	      target = id;
	    }
	  }
	}

	return target;
}