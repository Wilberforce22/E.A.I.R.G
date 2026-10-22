
if dmgtimer >= 1
gpu_set_fog(true,c_white,-999,999)
dmgtimer -= 1

if type != 4
if type != 2
draw_self()
if type == 2 && obj_settings.vfx == 0
draw_self()
if type == 4
{
image_alpha -= 0.9
draw_self()
image_alpha += 0.5
tempx = x
tempy = y
tempdir = point_direction(x,y,obj_player.x,obj_player.y)+90
x += lengthdir_x(sin(siner/40)*30,tempdir)
y += lengthdir_y(sin(siner/40)*30,tempdir)
draw_self()
x -= (lengthdir_x(sin(siner/40)*30,tempdir)*2)
y -= (lengthdir_y(sin(siner/40)*30,tempdir)*2)
draw_self()
x = tempx
y = tempy

}
if obj_settings.vfx == 1
if type == 2
{
	if image_index < round(image_index)
	{
		widesquish = 0.2
		heightsquish = -0.2
	}
	draw_sprite_ext(sprite_index,-1,x-(widesquish*sprite_width/2),y-(heightsquish*20),1+widesquish,1+heightsquish,0,c_white,image_alpha)
}
image_alpha = 1
if type == 0
draw_sprite_stretched_ext(spr_airbornrobot_1,-1,x,y,sprite_width,sprite_height,c_white,fade)
if type == 1
draw_sprite_stretched_ext(RollerRobot_1,-1,x,y,sprite_width,sprite_height,c_white,fade)

if type == 3
{
	if hp <= maxhp/3
	draw_sprite_ext(Screenbot____Screen,2,x,y,1,1,0,c_white,fade)
	else
	if hp <= maxhp/3*2
	draw_sprite_ext(Screenbot____Screen,1,x,y,1,1,0,c_white,fade)
	else
	draw_sprite_ext(Screenbot____Screen,0,x,y,1,1,0,c_white,fade)
	if dmgtimer > -20
	{
		draw_sprite_ext(Screenbot____Screen_2,image_index,x,y,1,1,0,c_white,fade)
	}
}
if type == 4
{
draw_sprite_stretched_ext(RouterRobot__1__1,-1,x,y,sprite_width,sprite_height,c_white,(distance_to_object(obj_player))/(obj_player.view-20))
}
if type == 5
draw_sprite_stretched_ext(Jim_1,-1,x,y,sprite_width,sprite_height,c_white,fade)
if type == 6
{
draw_sprite_stretched_ext(factory_1,-1,x,y,sprite_width,sprite_height,c_white,fade)
//draw_text(x,y,hp)
}
if type == -1
{
	if direction > 90 && direction < 270 
image_xscale = -1
else
image_xscale = 1
draw_sprite_ext(wind_ups_1,-1,x,y,image_xscale,image_yscale,0,c_white,fade)
draw_sprite_ext(wind_ups_2,-1,x,y,image_xscale,image_yscale,0,c_white,(time2/240))
}
if type == 7
{
draw_sprite_stretched_ext(spr_mimic_1,-1,x,y,sprite_width,sprite_height,c_white,fade)
draw_sprite_ext(spr_mimic_2,-1,x,y,image_xscale,image_yscale,0,c_white,1-(cooldown/50))
}
if type == 10
{
	if dash <= 0
	{
			if direction > 90 && direction < 270
			draw_sprite_ext(bossenemy_finished_dash_r_1,-1,x,y,image_xscale,image_yscale,0,c_white,fade)
	else
	draw_sprite_ext(bossenemy_finished_dash_1,-1,x,y,image_xscale,image_yscale,0,c_white,fade)
	}
	else
	{
		image_xscale = 1
	draw_sprite_stretched_ext(bossenemy_finished_1,-1,x+sprite_xoffset,y+sprite_yoffset,sprite_width,sprite_height,c_white,fade)
	}
}
image_alpha = 0
gpu_set_fog(false,c_white,-999,999)

draw_set_colour(c_white)
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)
