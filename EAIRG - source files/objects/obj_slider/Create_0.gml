type = instance_number(obj_slider)-1
clicked = 0
selected = 0
value = 1
x = room_width/2
if type == 0
{
	text = "music"
	value = obj_settings.musicvol
	x = room_width/10+(((value*2))*(room_width-room_width/5))/4
}
if type == 1
{
	text = "sound"
	value = obj_settings.soundvol
	x = room_width/10+(((value*2))*(room_width-room_width/5))/4
}
if type == 2
{
	text = "shader"
	value = obj_settings.shaderamnt
	x = room_width/10+(((value*2))*(room_width-room_width/5))/4
}
if type == 3
{
	text = "vfx"
	value = obj_settings.vfx
	x = room_width/10+(((value*4))*(room_width-room_width/5))/4
}