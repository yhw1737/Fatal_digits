randomize();
width = sprite_width
height = sprite_height
noise_range = 8;
s_g_w = surface_get_width(application_surface);
s_g_h = surface_get_height(application_surface);
surf=surface_create(s_g_w, s_g_h);
active = false;
c = 0;
objselected = false;
selection = false;
charcn = false;
obj = 0;

audio_play_sound(Sound3_ZZ,1,1);

maxobj = 3;