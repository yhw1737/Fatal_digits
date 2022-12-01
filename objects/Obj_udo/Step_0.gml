x = mouse_x;
y = mouse_y;
direction = point_direction( xprevious, yprevious, x, y );
array_push( trail_array, [ x, y, round( direction )]);
if ( array_length( trail_array ) > 20 ) {
	array_delete( trail_array, 0, 1 );
};