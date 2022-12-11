if instance_exists(Oenemy){
	var i_i_r = instance_in_range(5,350,120,Oenemy);
	if i_i_r != noone
	motion_add(point_direction(x,y,i_i_r.x,i_i_r.y),0.05);
}
array_push( trail_array, [ x, y, round( point_direction( xprevious, yprevious, x, y ) )]);
if ( array_length( trail_array ) > 18 ) {
	array_delete( trail_array, 0, 1 );
};
speed = clamp(speed,0,3);
spd = speed;
image_angle = direction;
if global.abilsel {
	speed = 0;
}
else {
	speed = spd;
}