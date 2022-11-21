/// @description Insert description here
// You can write your code in this editor
var size=1;
var exp_gap=150;
for(var i=0;i<size;i++){
	var draw_y=y+64*i;
	
	draw_sprite(failed_expbar,0,x+800,draw_y);
	draw_sprite_part(failed_expbar,1,0,0,100*(EXP/EXPfull),16,x+800+exp_gap,draw_y);
	draw_set_color(c_maroon);
}



