if type == 6
with instance_create_depth(x,y,-99,obj_enemy)
{
	type = -1
	sprite_index = wind_ups
	hp = 5+obj_settings.difficulty/20
	dmg = (1.25+dmg)*obj_settings.difficulty
	cooldown = 10
	time2 = 250
}