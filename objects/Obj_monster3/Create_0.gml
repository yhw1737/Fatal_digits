hp = 20*(1+0.5*(floor(min(1,Obj_player.level/15))));
maxhp = hp;
image_xscale = 0.2+0.1*floor(min(1,Obj_player.level/20));
image_yscale = 0.2+0.1*floor(min(1,Obj_player.level/20));
spd = (225+75*(floor(min(1,Obj_player.level/20))))/room_speed;
turn = 3;
event_inherited();