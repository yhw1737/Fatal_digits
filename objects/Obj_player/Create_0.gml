friction = 1;

delay = 0.05*room_speed;
delay_2 = 0.05*room_speed;
delay_3 = 0.05*room_speed;
delay_4 = 0.05*room_speed;

attspd = 0.2*room_speed;
maxspd = 240/room_speed;
spd = maxspd*0.05;
maxspd_ = maxspd;
accuracy = 0;
dmg = 10;
dmg_ = dmg;
attspd_ = attspd;
hp = 100;
maxhp = hp;
def = 0;
recov = 0.002;
critdmg = 1.2;
critper = 5;
b_n = 1;

shoot = 0;

hit = 0;
alarm_[0] = -1;
alarm_[1] = -1;

ddelay = 0;
dddelay = 0;

plevel = 3;
qactive = -1;

eff = 0;

for(var i=0;i<10;i++){
	for(var j=0;j<2;j++){
		objobj[i, j] = noone;
	}
}

image_speed = 0;
image_xscale = 0.25;
image_yscale = 0.25;

exp_c = 0;
exp_m = 5;
level = 0;

dead = false;

aaa[sprite_get_number(Sprite15)] = 0;