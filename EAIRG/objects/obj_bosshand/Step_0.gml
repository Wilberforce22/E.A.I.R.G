if !instance_exists(enemy)
{
	instance_create_depth(x,y,-99,obj_explosion_evil)
	instance_destroy()
}
damaging -= 1
if hp <= 0
{
	if obj_settings.vfx == 1
	{
	obj_settings.extramult += 2*obj_settings.shaderamnt
obj_settings.zoom += 20
	}
instance_create_depth(x,y,-99,obj_explosion_evil)
instance_destroy()
}
x += xvel
dmg = enemy.dmg/1.2
y += yvel
if place_meeting(x,y,obj_player) && damaging > 0
if obj_player.invframes <= 0
{
	obj_player.playerhp -= dmg
	obj_player.invframes = 15
}
if launch == 1
{
	timer2 -= 1
	image_index = timer2 mod(1)
	direction = point_direction(x,y,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2)
	if timer2 <= 0
	{
		xvel += lengthdir_x(8,direction)
		yvel += lengthdir_y(8,direction)
		launch = 0
		damaging = 50
		timer = random(80)
		timer2 = 30
	}
	else
	if distance_to_object(enemy) > 40
		{
			xvel -= sign(xvel)/4
			yvel -= sign(yvel)/4
		}
}
else
{
	if abs(xvel) > 4
	{
		xvel /= 1.5
	}
	if abs(yvel) > 4
	{
		yvel /= 1.5
	}
	image_index = 9
	timer -= 1
	if timer <= 0
	{
		launch = 1
	}
if distance_to_object(enemy) > 40
{
direction = point_direction(x,y,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2)
xvel += lengthdir_x(0.8,direction)
yvel += lengthdir_y(0.8,direction)
image_angle = direction-90
}
else
{
direction = point_direction(x,y,obj_player.x+obj_player.sprite_width/2,obj_player.y+obj_player.sprite_height/2)
xvel += lengthdir_x(0.4,direction)
yvel += lengthdir_y(0.4,direction)
image_angle = direction+90
}
}