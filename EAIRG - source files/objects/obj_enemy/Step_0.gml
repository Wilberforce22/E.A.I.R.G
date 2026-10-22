if type != 4
if x < room_width/10
x = room_width/10
if x > ((room_width/10)*9)-sprite_width
x = ((room_width/10)*9)-sprite_width
if y < room_height/10
y = room_height/10
if y > ((room_height/10)*9)-sprite_height
y = ((room_height/10)*9)-sprite_height
widesquish = lerp(widesquish,0,0.2)
heightsquish = lerp(heightsquish,0,0.2)

image_alpha = ((obj_player.view-20) - distance_to_object(obj_player))/(obj_player.view-20)
fade += fadeplus
if type != 5 and type != 7
direction = point_direction(x,y,obj_player.x+random_range(-5,5)-obj_player.sprite_width/4,obj_player.y+random_range(-5,5)-obj_player.sprite_width/4)
if type != 2
image_speed = lerp(image_speed,1,0.1)
if place_meeting(x,y,obj_buff)
{
	
	if type == 6
	{
		dmg += 0.02
		hp += 0.1
		image_speed += 0.4
	}
	else
	if type == 4
	{
	dmg += 0.05
	hp += 0.1
	speed += 0.1
	siner += 0.04
	}
	else
	{
	dmg += 0.1
	hp += 0.1
	speed += 1.5
	cooldown -= 0.5
	}
	
}
if type == 0
speed = 0.5
if type == 1
speed = 0.35
if type == 2
{
if distance_to_point(x,obj_player.y+obj_player.sprite_height/2) > distance_to_point(obj_player.x+obj_player.sprite_width/2,y)
{
	speed = 1
	hspeed = 0
}
else
{
	speed = 1
	vspeed = 0
	
}
}
if type == 3
{
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	siner += 1
	speed = (sin(siner/4) + 1)*1.1
}
if type == 4
{
	siner += 1
	if distance_to_object(obj_player) < 40
	{
	speed -= 0.1
	}
	else
	speed += 0.1
	if cooldown <= 0
	{
	instance_create_depth(x,y,-99,obj_buff)
	cooldown = 50
	}
}
if type == 5
{
	if speed <= 0.1
	{
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	}
	siner += sinspd
	speed = (sin(siner/30) + 1)*0.15
	if cooldown <= 0
	{
	instance_create_depth(x+7,y+5,-99,obj_laser)
	cooldown = random_range(140,160)
	}
}
time -= 1
if type == -1
{
	image_yscale = 1
	image_xscale = 1
time2 -= 1
if time2 <= 0
{
	instance_destroy()
	instance_create_depth(x+sprite_width/2,y+sprite_height/2,-999,obj_explosion_evil)
}
speed = lerp(speed,1,0.1)
if place_meeting(x,y,obj_player)
speed = -3
}

if type == 7
{
	if speed <= 0.1
	{
		speed = 1.5
	direction = point_direction(x,y,obj_player.x+sprite_width,obj_player.y-sprite_width)
	}
	speed -= 0.05
	if cooldown <= 0
	{
		repeat random_range(3,5)
		{
	instance_create_depth(x+7,y+5,-99,obj_laser_1)
		}
	cooldown = random_range(140,160)
	}
}
if type == 10
{
	dash -= 1
	if timer <= 0
	{
	instance_create_depth(x+sprite_width/2,y+42,-99,obj_particle)
	timer = 23
	}
	if dash <= 0
	{
		if dash <= -20
	dash = random_range(80,130)
	if direction > 90 && direction < 270
	sprite_index = bossenemy_finished_dash_r
	else
	sprite_index = bossenemy_finished_dash
	direction = point_direction(x+sprite_width/2,y+sprite_height/2,obj_player.x+obj_player.sprite_width/2,obj_player.y+obj_player.sprite_height/2)
	speed = 3
	}
	else
	speed = lerp(speed,0,0.2)
		sprite_index = bossenemy_finished
}
if place_meeting(x,y,obj_player)
{
	if type != 6
	{
	if cooldown <= 0
	{
		if obj_player.invframes <= 0
		{
			if type == 3
			obj_player.invframes = obj_player.invamnt*3
			else
			obj_player.invframes = obj_player.invamnt*1.5
	obj_player.playerhp -= dmg/obj_player.defense
	if type == 3
	cooldown = 60
	else
	cooldown = 10
		}
	}
	}
}
if place_meeting(x,y,obj_explosion)
{
	if obj_explosion.sprite_index == spr_revive
	{
		hp -= 10*obj_settings.difficulty
	}
hp -= obj_player.explosivesize/10
}
if timer <= 0
{
cooldown -= 1
}
timer -= 1

if hp <= 0
instance_destroy()
depth = -y-sprite_height