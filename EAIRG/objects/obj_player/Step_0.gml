if global.play == true
{
	if obj_settings.vfx == 1
	{
	widesquishhead = lerp(widesquishhead,0,0.2)
	heightsquishhead = lerp(heightsquishhead,0,0.2)
	widesquish = lerp(widesquish,0,0.2)
	heightsquish = lerp(heightsquish,0,0.2)
	}
	playerhp += healamnt
	if playerhp > playermaxhp
	playerhp = playermaxhp
	xspd = 0
	if playerhp < playermaxhp/3
	{
	defense = deathfense + def+(3)
	}
	else
	defense = 1 + def
	invframes -= 1
	yspd = 0
	if obj_settings.vfx == 1
	obj_settings.mult += 10-(playerhp/playermaxhp*10)
	
	if invframes <= 0 && place_meeting(x,y,obj_explosion_evil)
	{
		playerhp -= 3
		invframes = 70
	}
	if wheelanim >= 6
	wheelanim = 1
	if wheelanim <= 0
	wheelanim = 5
if gamepad_is_connected(0)
{
	gamepad_set_axis_deadzone(0,0.2)
xspd = gamepad_axis_value(0, gp_axislh) * spd
yspd = gamepad_axis_value(0, gp_axislv) * spd
if (yspd/2+xspd/2) > 0
{
	wheelanim += (abs(yspd/2)+abs(xspd/2))/1.5
}
if (yspd/2+xspd/2) < 0
{
	wheelanim -= (abs(yspd/2)+abs(xspd/2))/1.5
}
if abs(xspd) > abs(yspd)
{
	dir = 1
}
else
dir = 0
}
if keyboard_check(up)
{
	yspd = -spd
	dir = 2
	if !(keyboard_check(left) or keyboard_check(right))
	wheelanim -= 0.5
}
if keyboard_check(down)
{
	yspd = spd
	dir = 0
	if !(keyboard_check(left) or keyboard_check(right))
	wheelanim += 0.5
}
if keyboard_check(left)
{
	xspd = -spd
	dir = 3
	wheelanim -= 0.5
}
if keyboard_check(right)
{
	xspd = spd
	dir = 1
	wheelanim += 0.5
}
if place_meeting(x+xspd,y,obj_collision)
xspd = 0
if place_meeting(x,y+yspd,obj_collision)
yspd = 0
x += xspd
y += yspd
if heads == 1
{
	if instance_exists(obj_enemy)
	{
	timer -= 1
	if timer <= 0
	{
		if obj_settings.vfx == 1
		{
		widesquish += 0.1
		widesquishhead -= 0.6
		heightsquish -= 0.1
		heightsquishhead += 0.4
		}
		timer = 100
		repeat random_range(2,5)
		instance_create_depth(x+(sprite_width/3)*2,y+4,-99,obj_laser_player)
	}
	}
}
if firedir < 0
{
gamepad_set_vibration(0,0,0)
}
else
{
	if obj_settings.vfx == 1
	{
	widesquish += 0.02
heightsquish -= 0.02
	}
}
firedir = -1
if cooldown <= 0
{
if keyboard_check(downfire) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axisrv) > abs(gamepad_axis_value(0, gp_axisrh))
{
firedir = 0
gamepad_set_vibration(0,0.2,0.2)
}
if keyboard_check(rightfire) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axisrh) > abs(gamepad_axis_value(0, gp_axisrv))
{
firedir = 1
gamepad_set_vibration(0,0.05,0.4)
}
if keyboard_check(upfire) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axisrv) < -abs(gamepad_axis_value(0, gp_axisrh))
{
firedir = 2
gamepad_set_vibration(0,0.2,0.2)
}
if keyboard_check(leftfire) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axisrh) < -abs(gamepad_axis_value(0, gp_axisrv))
{
gamepad_set_vibration(0,0.4,0.05)
firedir = 3
}
}
if playerhp <= 2
{
firedir = -1
cooldown = 10
}
cooldown -= 1
if firedir >= 0
{
	if obj_settings.vfx == 1
	{
	obj_settings.shake_remain += 2
	obj_settings.zoom += 10
	obj_settings.mult += 0.2
	}
	repeat(pierce)
	{
if firedir == 0
with (collision_rectangle(x+sprite_width/2-lasersize-1-offset,y+10,x+sprite_width/2+lasersize-offset,y+500, obj_enemy, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 1
with (collision_rectangle(x+sprite_width/2-offset+10,y+lasersize+1,x+500+sprite_width/2-offset,y-lasersize-1, obj_enemy, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 2
with (collision_rectangle(x+sprite_width/2+lasersize-offset,y,x+sprite_width/2-lasersize-offset,y-500, obj_enemy, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 3
with (collision_rectangle(x+sprite_width/2-offset,y-lasersize,x-500+sprite_width/2-offset,y+lasersize*2, obj_enemy, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
{
	if firedir == 0
with (collision_rectangle(x+sprite_width/2-lasersize-1-offset,y+10,x+sprite_width/2+lasersize-offset,y+500, obj_bosshand, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 1
with (collision_rectangle(x+sprite_width/2-offset+10,y+lasersize+1,x+500+sprite_width/2-offset,y-lasersize-1, obj_bosshand, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 2
with (collision_rectangle(x+sprite_width/2+lasersize-offset,y,x+sprite_width/2-lasersize-offset,y-500, obj_bosshand, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
if firedir == 3
with (collision_rectangle(x+sprite_width/2-offset,y-lasersize,x-500+sprite_width/2-offset,y+lasersize*2, obj_bosshand, true, true))
{
hp -= other.dmg
other.playerhp += other.vamp
dmgtimer = 1
}
}
	}
audio_play_sound(Pew,1,false,0.3*obj_settings.soundvol)
audio_play_sound(Pew2,1,false,0.3*obj_settings.soundvol,0,random_range(0.9,1.1))
if playerhp <= playermaxhp/2
if playerhp <= playermaxhp/4
{
	obj_settings.mult += 10
playerhp -= (drainamnt+(obj_settings.wave/200))/2
}
else
{
	obj_settings.mult += 5
playerhp -= (drainamnt+(obj_settings.wave/150))/1.5
}
else
{
playerhp -= drainamnt+(obj_settings.wave/75)/1.05
}
}
else
{
audio_stop_sound(Pew)
audio_stop_sound(Pew2)
}
}

if playerhp <= 0
{
	if revives > 0
	{
	playerhp = playermaxhp/5*4
	invframes = 50
	revives -= 1
	instance_create_depth(x,y,-10000,obj_explosion)
	}
	else
	{
	ini_open("save")
	if ini_read_real("highscore","waves",0) < obj_settings.wave
	ini_write_real("highscore","waves",obj_settings.wave)
	if  ini_read_real("highscore","scrap",0) < global.scrap
	ini_write_real("highscore","scrap",global.scrap)
	global.scores[3] =  ini_read_real("highscore","waves",0)
	global.scores[4] =  ini_read_real("highscore","scrap",0)
	ini_close()
	global.scores[1] = obj_settings.wave
	global.scores[2] = global.scrap
	room = rm_fail
	}
}
depth = -y
if x < room_width/10
x = room_width/10
if x > ((room_width/10)*9)-sprite_width
x = ((room_width/10)*9)-sprite_width
if y < room_height/10
y = room_height/10
if y > ((room_height/10)*9)-sprite_height
y = ((room_height/10)*9)-sprite_height
