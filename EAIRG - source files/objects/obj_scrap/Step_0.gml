speed -= 1
if speed < 0
{
speed = 0
tracking = 1
}
if tracking == 1
{
speed = 5
direction = point_direction(x,y,obj_player.x+obj_player.sprite_width/2,obj_player.y+obj_player.sprite_height/2-8)
}

if place_meeting(x,y,obj_player)
{
	instance_destroy()
	global.scrap += 1
}