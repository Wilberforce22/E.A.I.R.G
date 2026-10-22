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
if place_meeting(x,y,obj_player)
{
	if obj_player.invframes <= 0
	obj_player.playerhp -= dmg/obj_player.defense
instance_destroy()
}