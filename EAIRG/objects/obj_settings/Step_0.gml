if controller == false
button = -1
shake_remain = lerp(shake_remain,0,0.4)
zoom = lerp(zoom,0,0.1)
mult = min(lerp(mult,1,0.4),1.5*shaderamnt)+extramult*(shaderamnt)
extramult = lerp(extramult,0,0.2*shaderamnt)
if gamepad_is_connected(0)
{
	controller = true
}
else
{
	controller = false
}

if room == rm_tutorial
	{
		if mouse_check_button_pressed(mb_left)
		room = rm_fight
		if gamepad_button_check_pressed(0,gp_face1)
			{
				room = rm_fight
			}
	}


if star <= 0 && room != rm_tutorial
{
instance_create_depth(-20,random(room_height),99,obj_star)
star = random(12)
}
star -= 1
if room == rm_fight
{
if enemytimer <= 0 && enemies >= 0
{
	a = 0
	if wave == 5 || wave == 10 || wave == 15 || wave == 20
	{
		if a == 0
		{
			a = 1
			cards = obj_player.card
		setup = 1
		}
		boss = true
		enemies = -20
		enemytimer = -1
		instance_create_depth(random_range(room_width/10,room_width/10*9),random_range(room_height/10,room_height/10*9),-9,obj_enemy)
		bossenemy = instance_nearest(x,y,obj_enemy)
		maxhp = bossenemy.hp*1.15
	}
	else
	{
		boss = false
	timer = 30
	instance_create_depth(random_range(room_width/10,room_width/10*9),random_range(room_height/10,room_height/10*9),-9,obj_enemy)
	enemytimer = ((random_range(3*difficulty,7*difficulty)/20)/obj_player.magnet)-time
	if enemytimer >= 50
	enemytimer = 49
	time += 1
	}
}
enemytimer -= 1
}

if enemies <= 0 && !instance_exists(obj_enemy)
{
	if timer <= 0
	{
	global.play = false
	menu = true
	}
	else
	{
		cards = obj_player.card
	setup = 1
	timer -= 1
	time = 0
	}
}
gamepad_set_axis_deadzone(0,deadzone+0.4)
if room == rm_settings
{
	if gamepad_axis_value(0,gp_axislv) == 0
{
dontdoagain = false
}
}
else
{
	if gamepad_axis_value(0, gp_axislh) == 0
{
dontdoagain = false
}
}

if dontdoagain == false
{
	if lock == false
	{
	if room == rm_settings
	{
		if gamepad_button_check_pressed(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0
		{
		button += 1
		dontdoagain = true
		}
		if gamepad_button_check_pressed(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < 0
		{
		button -= 1
		dontdoagain = true
		}
	}
	else
	{
if gamepad_button_check_pressed(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0
{
button += 1
dontdoagain = true
}
if gamepad_button_check_pressed(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < 0
{
button -= 1
dontdoagain = true
}
	}
	}
}
gamepad_set_axis_deadzone(0,deadzone)
if button > options
button = 0
if button < 0
button = options

if controller == false
button = -1

audio_sound_gain(musicthing,musicvol,0.5)