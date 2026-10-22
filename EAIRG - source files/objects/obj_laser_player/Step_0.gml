with instance_create_depth(x,y,-99,obj_afterimage)
{
	direction = other.direction
speed = other.speed/4
sprite_index = other.sprite_index
image_index = other.image_index
image_speed = 0
image_alpha = 0.7
image_angle = other.image_angle
}
if place_meeting(x,y,obj_enemy)
{
	instance_nearest(x,y,obj_enemy).hp -= dmg
	instance_nearest(x,y,obj_enemy).dmgtimer = 5
	obj_player.playerhp += obj_player.drainamnt*1.2
	pierce -= 1
	if pierce == 0
	{
instance_destroy()
	}
}