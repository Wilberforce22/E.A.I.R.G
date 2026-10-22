if obj_settings.button == type + 1 && selected == 1
{
	obj_settings.lock = true
		image_xscale = lerp(image_xscale,1.5,0.3)
		image_yscale = lerp(image_yscale,1.5,0.3)
	x += gamepad_axis_value(0, gp_axislh)*2
	if gamepad_button_check_pressed(0, gp_padl)
	x -= 10
	if gamepad_button_check_pressed(0, gp_padr)
	x += 10
	if type == 1
	{
		if gamepad_axis_value(0, gp_axislh) != 0 || gamepad_button_check_pressed(0, gp_padl) || gamepad_button_check_pressed(0, gp_padr)
		{
		audio_play_sound(Pew,1,false,0.3*obj_settings.soundvol)
		audio_play_sound(Pew2,1,false,0.3*obj_settings.soundvol,0,random_range(0.9,1.1))
		}
	}
}
if (gamepad_button_check_pressed(0,gp_face1)||gamepad_button_check_pressed(0,gp_face2)) && obj_settings.button == type + 1
{
	if selected == 0
	selected = 1
	else
	{
	selected = 0
	obj_settings.lock = false
	}
}
if place_meeting(x,y,obj_mouse) && mouse_check_button_pressed(mb_left)
{
	clicked = 1
}
if clicked == 1
{
	if type == 1
	{
		audio_play_sound(Pew,1,false,0.3*obj_settings.soundvol)
		audio_play_sound(Pew2,1,false,0.3*obj_settings.soundvol,0,random_range(0.9,1.1))
	}
	if type == 3
	round(value)
x = mouse_x-sprite_width/2
}
if place_meeting(x,y,obj_mouse) || obj_settings.button == type+1
{
	image_index = 1
	image_xscale = lerp(image_xscale,1.2,0.3)
	image_yscale = lerp(image_yscale,1.2,0.3)
}
else
{
	image_index = 0
	image_xscale = lerp(image_xscale,1,0.3)
	image_yscale = lerp(image_yscale,1,0.3)
}
if !mouse_check_button(mb_left)
{
	ini_open("save")
if type == 0
ini_write_real("settings","music",value)
else
if type == 1
ini_write_real("settings","sound",value)
else
if type == 2
ini_write_real("settings","shader",value)
else
if type == 3
ini_write_real("settings","vfx",value)
ini_close()
	clicked = 0
}
if x < room_width/10
x = room_width/10
if x > (room_width/10)*9
x = (room_width/10)*9
if type == 3
value = round((x - room_width/10)/(room_width-(room_width/5)))
else
value = ((x - room_width/10)/(room_width-(room_width/5)))*2

if type == 0
obj_settings.musicvol = value
if type == 1
obj_settings.soundvol = value
if type == 2
obj_settings.shaderamnt = value
if type == 2
obj_settings.vfx = value