if place_meeting(x,y,obj_mouse) || obj_settings.button == cardid
{
	image_index = 1
image_xscale = lerp(image_xscale,2.2,0.3)
image_yscale = lerp(image_yscale,2.2,0.3)
if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0,gp_face1)) && global.scrap >= cost && obj_settings.cards > 1 && obj_settings.unique[card_id] == false && bought == 0
{
	bought = 1
	global.scrap -= cost
	obj_settings.cards -= 1
	scr_use(card_id)
	if card_id != 999 && unique[card_id] == true
	{
		obj_settings.unique[card_id] = true
	}
}
}
else
{
	image_index = 0
image_xscale = lerp(image_xscale,2,0.3)
image_yscale = lerp(image_yscale,2,0.3)
}
if bought == 1
image_index = 2