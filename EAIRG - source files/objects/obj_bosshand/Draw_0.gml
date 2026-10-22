if dmgtimer >= 1
gpu_set_fog(true,c_white,-999,999)
dmgtimer -= 1

if !instance_exists(enemy)
{
	instance_destroy()
}
image_alpha = ((obj_player.view-20) - distance_to_object(obj_player))/(obj_player.view-20)
draw_self()
image_alpha = 1
//draw_line(x+sprite_width/2,y+sprite_width/2,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_width/2)

if instance_exists(enemy)
{
draw_sprite_ext(hand_ring,0,lerp(x+sprite_width/2,enemy.x+enemy.sprite_width/2, 0.3),lerp(y+sprite_height/2,enemy.y+enemy.sprite_height/2, 0.3),1,1,point_direction(x+sprite_width/2,y+sprite_width/2,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_width/2),c_white,1)
draw_sprite_ext(hand_ring,0,lerp(x+sprite_width/2,enemy.x+enemy.sprite_width/2, 0.6),lerp(y+sprite_height/2,enemy.y+enemy.sprite_height/2, 0.6),1,1,point_direction(x+sprite_width/2,y+sprite_width/2,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_width/2),c_white,1)
}

gpu_set_fog(false,c_white,-999,999)