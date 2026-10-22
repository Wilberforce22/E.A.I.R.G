if variable_instance_exists(self,"type")
{
}
else
type = round(random(min(obj_settings.wave/3,7)))
time = 0
fade = 0
widesquish = 0.4
heightsquish = -0.2
fadeplus = random_range(0.05,0.5)
image_alpha = 0
type = 2
if obj_settings.boss = 1
type = 10
{
image_xscale = 2
image_yscale = 2
}
if type == 2 or type == 3 or type == 5 or type == 6 or type == 7 or type == 10
{
	image_xscale = 1
	image_yscale = 1
}
cooldown = 10
timer = 50
dmgtimer = 0
if type == 0
{
	obj_settings.enemies -= 1
sprite_index = spr_airbornrobot
hp = 10+obj_settings.difficulty*1
dmg = 3+obj_settings.difficulty/1.5
}
if type == 1
{
	obj_settings.enemies -= 1.5
sprite_index = RollerRobot
hp = 15+obj_settings.difficulty*3
dmg = 2+ obj_settings.difficulty/2
}
if type == 2
{
	image_speed = 0.4
	obj_settings.enemies -= 2
sprite_index = roomba1
hp = 5+obj_settings.difficulty*1.5
dmg = 8+obj_settings.difficulty*2
}
if type == 3
{
	obj_settings.enemies -= 2.5
	siner = 1
	sprite_index = Screenbot
hp = 8+obj_settings.difficulty*1.4
maxhp = hp
dmg = 1+obj_settings.difficulty/1.6
}
if type == 4
{
	siner = 0
	obj_settings.enemies -= 3
	sprite_index = RouterRobot__1_
hp = 18+obj_settings.difficulty*8
dmg = obj_settings.difficulty/3
}
if type == 5
{
	obj_settings.enemies -= 4
	sinspd = random_range(-0.8,1.2)
	siner = 1
	sprite_index = Jim
hp = 25+obj_settings.difficulty*5+random(50)
dmg = 10+obj_settings.difficulty*1.2
}
if type == 6
{
	obj_settings.enemies -= 5
	time = 150
	sprite_index = factory
hp = 40+obj_settings.difficulty*7
dmg = 0
}
if type == 7
{
	image_speed = random_range(0.8,1.1)
	obj_settings.enemies -= 7
	sprite_index = spr_mimic
hp = 12+obj_settings.difficulty*2.5
dmg = 3+obj_settings.difficulty/1.5
cooldown = random_range(40,90)
}
if type == 10
{
	dash = 50
	timer = 10
	obj_settings.enemies -= 10
	sprite_index = bossenemy_finished
hp = (60+(obj_settings.difficulty*10))*20
dmg = 7+obj_settings.difficulty/1.1
cooldown = random_range(40,90)
repeat 2
with instance_create_depth(x,y,-999,obj_bosshand)
{
	enemy = other.id
}
}
