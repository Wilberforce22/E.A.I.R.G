if place_meeting(x,y,obj_mouse) || obj_settings.button == button
{
	image_index = 1
image_xscale = lerp(image_xscale,1.2,0.3)
image_yscale = lerp(image_yscale,1.2,0.3)
if mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0,gp_face1)
event_user(0)
}
else
{
	image_index = 0
image_xscale = lerp(image_xscale,1,0.3)
image_yscale = lerp(image_yscale,1,0.3)
}
depth = -99
