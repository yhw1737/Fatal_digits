if mouse_check_button_pressed(mb_left){
	if position_meeting(mouse_x,mouse_y,oStart){
		surface_copy(surf,0,0,application_surface);
		active = true;
		instance_deactivate_all(true);
	}
}

if room == Room1{
	if objselected = false{
		if selection = false{
			instance_deactivate_all(true);
			selection = true;
		}
	}
}