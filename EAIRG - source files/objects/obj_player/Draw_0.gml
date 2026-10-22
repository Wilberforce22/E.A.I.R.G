if heads == 1
{
	offset = 5
}
if obj_settings.vfx == 1
{
if dir == 1 or dir == 3
draw_sprite_ext(Wheel,wheelanim,x+sprite_width/2,(y+sprite_height/2)+heightsquish,1+widesquish,1+heightsquish,0,c_white,1)
else
draw_sprite_ext(spr_Wheel_but_from_the_front_or_back_idk_its_both_i_guess,wheelanim,x+sprite_width/2,(y+sprite_height/2)+heightsquish,1+widesquish,1+heightsquish,0,c_white,1)
draw_sprite_ext(spr_Robody,0,x+sprite_width/2,(y+sprite_height/2-10)-(heightsquish*10),1+widesquish,1+heightsquish,0,c_white,1)
if heads == 1
{
draw_sprite_ext(Robot_Head,0,(x+sprite_width/2+5)+(widesquishhead*10),(y+sprite_height/2-16)-(heightsquish*15),1+heightsquish+heightsquishhead,1+widesquish+widesquishhead,270,c_white,1)
draw_sprite_ext(Robot_Head_charge,0,(x+sprite_width/2+5)+(widesquishhead*10),(y+sprite_height/2-16)-(heightsquish*15),1+heightsquish+heightsquishhead,1+widesquish+widesquishhead,270,c_white,1-timer/100)
}
if firedir >= 0
{
draw_sprite_ext(Robot_Head_fire,-1,x+sprite_width/2-offset,(y+sprite_height/2-20)-heightsquish*20,1+widesquish,1+heightsquish,0,c_white,1)
}
else
draw_sprite_ext(Robot_Head,1,x+sprite_width/2-offset,(y+sprite_height/2-20)-heightsquish*20,1+widesquish,1+heightsquish,0,c_white,1)
if firedir >= 0
{
	beamc = make_colour_rgb(lerp(0,255,min(-scrap/3,1)),lerp(255,160,min(-scrap/3,1)),lerp(255,64,min(-scrap/3,1)))
	draw_set_colour(beamc)
if firedir == 0
{
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*lasersize-image_index-offset,y+10-heightsquish*20,x+sprite_width/2+image_index-offset+(playerhp/playermaxhp)*lasersize,y+10-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-(playerhp/playermaxhp)*lasersize-image_index-offset,y+10-heightsquish*20,x+sprite_width/2+(playerhp/playermaxhp)*lasersize+image_index-offset,y+500-heightsquish*20,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*(lasersize-1)-image_index-offset,y+10-heightsquish*20,x+sprite_width/2+(playerhp/playermaxhp)*(lasersize-1)+image_index-offset,y+10-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-(playerhp/playermaxhp)*(lasersize-1)-image_index-offset,y+10-heightsquish*20,x+sprite_width/2+(playerhp/playermaxhp)*(lasersize-1)+image_index-offset,y+500-heightsquish*20,false)
}
if firedir == 1
{
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-offset+10,y+(playerhp/playermaxhp)*lasersize+image_index-heightsquish*20,x+sprite_width/2-offset+10,y-(playerhp/playermaxhp)*lasersize-image_index-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-offset+10,y+(playerhp/playermaxhp)*lasersize+image_index-heightsquish*20,x+500+sprite_width/2-offset,y-(playerhp/playermaxhp)*lasersize-image_index-heightsquish*20,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-offset+10,y+(playerhp/playermaxhp)*(lasersize-1)+image_index-heightsquish*20,x+sprite_width/2-offset+10,y-(playerhp/playermaxhp)*(lasersize-1)-image_index-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-offset+10,y+(playerhp/playermaxhp)*(lasersize-1)+image_index-heightsquish*20,x+500+sprite_width/2-offset,y-(playerhp/playermaxhp)*(lasersize-1)-image_index-heightsquish*20,false)
}
if firedir == 2
{
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*(lasersize)-image_index-offset,y-10-heightsquish*20,x+sprite_width/2+(playerhp/playermaxhp)*(lasersize)+image_index-offset,y-10-heightsquish*20,false)
draw_rectangle(x+sprite_width/2+(playerhp/playermaxhp)*(lasersize)+image_index-offset,y-10-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*(lasersize)-image_index-offset,y-500-heightsquish*20,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*(lasersize-1)-image_index-offset,y-10-heightsquish*20,x+sprite_width/2+(playerhp/playermaxhp)*(lasersize-1)+image_index-offset,y-10-heightsquish*20,false)
draw_rectangle(x+sprite_width/2+(playerhp/playermaxhp)*(lasersize-1)+image_index-offset,y-10-heightsquish*20,x+sprite_width/2-(playerhp/playermaxhp)*(lasersize-1)-image_index-offset,y-500-heightsquish*20,false)
}
if firedir == 3
{
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-offset-10,y-(playerhp/playermaxhp)*(lasersize)+image_index-heightsquish*20,x+sprite_width/2-offset-10,y+(playerhp/playermaxhp)*(lasersize)-image_index-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-offset-10,y-(playerhp/playermaxhp)*(lasersize)+image_index-heightsquish*20,x-500+sprite_width/2-offset,y+(playerhp/playermaxhp)*(lasersize)-image_index-heightsquish*20,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y-heightsquish*20,x+sprite_width/2-offset-10,y-(playerhp/playermaxhp)*(lasersize-1)+image_index-heightsquish*20,x+sprite_width/2-offset-10,y+(playerhp/playermaxhp)*(lasersize-1)-image_index-heightsquish*20,false)
draw_rectangle(x+sprite_width/2-offset-10,y-(playerhp/playermaxhp)*(lasersize-1)+image_index-heightsquish*20,x-500+sprite_width/2-offset,y+(playerhp/playermaxhp)*(lasersize-1)-image_index-heightsquish*20,false)
}
}
}
else
{
	if dir == 1 or dir == 3
draw_sprite(Wheel,wheelanim,x+sprite_width/2,(y+sprite_height/2))
else
draw_sprite(spr_Wheel_but_from_the_front_or_back_idk_its_both_i_guess,wheelanim,x+sprite_width/2,(y+sprite_height/2))
draw_sprite(spr_Robody,0,x+sprite_width/2,(y+sprite_height/2-10))
if heads == 1
{
draw_sprite_ext(Robot_Head,0,(x+sprite_width/2+5),(y+sprite_height/2-16),1,1,270,c_white,1)
draw_sprite_ext(Robot_Head_charge,0,(x+sprite_width/2+5),(y+sprite_height/2-16),1,1,270,c_white,1-timer/100)
}
if firedir >= 0
{
draw_sprite(Robot_Head_fire,-1,x+sprite_width/2-offset,(y+sprite_height/2-20))
}
else
draw_sprite(Robot_Head,1,x+sprite_width/2-offset,(y+sprite_height/2-20))

if firedir >= 0
{
	beamc = make_colour_rgb(lerp(0,255,min(-scrap/3,1)),lerp(255,160,min(-scrap/3,1)),lerp(255,64,min(-scrap/3,1)))
	draw_set_colour(beamc)
if firedir == 0
{
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-1*lasersize-image_index-offset,y+10,x+sprite_width/2+image_index-offset+1*lasersize,y+10,false)
draw_rectangle(x+sprite_width/2-1*lasersize-image_index-offset,y+10,x+sprite_width/2+1*lasersize+image_index-offset,y+500,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-1*(lasersize-1)-image_index-offset,y+10,x+sprite_width/2+1*(lasersize-1)+image_index-offset,y+10,false)
draw_rectangle(x+sprite_width/2-1*(lasersize-1)-image_index-offset,y+10,x+sprite_width/2+1*(lasersize-1)+image_index-offset,y+500,false)
}
if firedir == 1
{
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-offset+10,y+1*lasersize+image_index,x+sprite_width/2-offset+10,y-1*lasersize-image_index,false)
draw_rectangle(x+sprite_width/2-offset+10,y+1*lasersize+image_index,x+500+sprite_width/2-offset,y-1*lasersize-image_index,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-offset+10,y+1*(lasersize-1)+image_index,x+sprite_width/2-offset+10,y-1*(lasersize-1)-image_index,false)
draw_rectangle(x+sprite_width/2-offset+10,y+1*(lasersize-1)+image_index,x+500+sprite_width/2-offset,y-1*(lasersize-1)-image_index,false)
}
if firedir == 2
{
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-1*(lasersize)-image_index-offset,y-10,x+sprite_width/2+1*(lasersize)+image_index-offset,y-10,false)
draw_rectangle(x+sprite_width/2+1*(lasersize)+image_index-offset,y-10,x+sprite_width/2-1*(lasersize)-image_index-offset,y-500,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-1*(lasersize-1)-image_index-offset,y-10,x+sprite_width/2+1*(lasersize-1)+image_index-offset,y-10,false)
draw_rectangle(x+sprite_width/2+1*(lasersize-1)+image_index-offset,y-10,x+sprite_width/2-1*(lasersize-1)-image_index-offset,y-500,false)
}
if firedir == 3
{
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-offset-10,y-1*(lasersize)+image_index,x+sprite_width/2-offset-10,y+1*(lasersize)-image_index,false)
draw_rectangle(x+sprite_width/2-offset-10,y-1*(lasersize)+image_index,x-500+sprite_width/2-offset,y+1*(lasersize)-image_index,false)
draw_set_colour(c_white)
draw_triangle(x+sprite_width/2-offset,y,x+sprite_width/2-offset-10,y-1*(lasersize-1)+image_index,x+sprite_width/2-offset-10,y+1*(lasersize-1)-image_index,false)
draw_rectangle(x+sprite_width/2-offset-10,y-1*(lasersize-1)+image_index,x-500+sprite_width/2-offset,y+1*(lasersize-1)-image_index,false)
}
}

}

draw_set_colour(c_white)
draw_rectangle(x+(sprite_width/2)-10,y-(sprite_height)-5+15,x+10+(sprite_width/2),y-(sprite_height)-15+15,false)
draw_set_colour(c_blue)
draw_rectangle(x+(sprite_width/2)-9,y-(sprite_height)-6+15,x+11+(playerhp/playermaxhp)*(9+(sprite_width/2)/2.3),y-(sprite_height)-14+15,false)

draw_set_colour(c_white)
//draw_text(x,y,obj_settings.shake_remain)
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false)