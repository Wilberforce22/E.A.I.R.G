if place_meeting(x,y,obj_mouse)
{
	image_index = 1
image_xscale = lerp(image_xscale,1.2,0.3)
image_yscale = lerp(image_yscale,1.2,0.3)
if mouse_check_button_pressed(mb_left)
obj_settings.cardmenu = true
}
else
{
	image_index = 0
image_xscale = lerp(image_xscale,1,0.3)
image_yscale = lerp(image_yscale,1,0.3)
}
depth = -99